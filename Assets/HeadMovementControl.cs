using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class HeadMovementControl : MonoBehaviour {
	public OVRCameraController camControl;
	
	// Peeing
	public AudioClip PeeClip1;
	public AudioClip PeeClip2;
	
	private bool peeingLeft;
	private bool peeingRight;
	private float peeingDuration;
	
	static float MaxPeeDuration = 16.323f;
	
	// Running
	public float HeadRunSpeed = 1.0f;
	
	private float previousPitch = 0.0f;
	private float timeOfLastUpPitch = -1.0f;
	private float timeOfLastDownPitch = -1.0f;
	private float frequencyOfHeadUpPitches = 0.0f;
	private float frequencyOfHeadDownPitches = 0.0f;
	private float frequencyOfHeadPitches = 0.0f;
	
	static float HeadPitchFrequencyFalloffRate = 1.0f;
	static float PitchMagnitudeUp = 347.0f;
	static float PitchMagnitudeDown = 13.0f;
	static float MaxHeadRunSpeed = 4.0f;
	static float HeadPitchFrequencyToSpeedFactor = 2.5f;

	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		UpdatePeeing();
		UpdateHeadRunSpeed();
	}
	
	void UpdateHeadRunSpeed() {
		Vector3 eulers = camControl.CameraLeft.transform.eulerAngles;
		float pitch = eulers.x;
		
		if (IsHeadPitchedUp(previousPitch, pitch)) {
			if (timeOfLastUpPitch > 0.0f) {
				float timeBetweenUpPitches = Time.time - timeOfLastUpPitch;
				
				frequencyOfHeadUpPitches = 1.0f / timeBetweenUpPitches;
				frequencyOfHeadPitches = Mathf.Max(frequencyOfHeadUpPitches, frequencyOfHeadDownPitches);
				//Debug.Log("Up");
			}
			timeOfLastUpPitch = Time.time;
		} else if (IsHeadPitchedDown(previousPitch, pitch)) {
			if (timeOfLastDownPitch > 0.0f) {
				float timeBetweenDownPitches = Time.time - timeOfLastDownPitch;
				
				frequencyOfHeadDownPitches = 1.0f / timeBetweenDownPitches;
				frequencyOfHeadPitches = Mathf.Max(frequencyOfHeadUpPitches, frequencyOfHeadDownPitches);
				//Debug.Log("Down");
			}
			timeOfLastDownPitch = Time.time;
		} else if ((Time.time - timeOfLastDownPitch) > 1.0f / frequencyOfHeadDownPitches &&
				   (Time.time - timeOfLastUpPitch) > 1.0f / frequencyOfHeadUpPitches) {
			frequencyOfHeadPitches -= Time.deltaTime * HeadPitchFrequencyFalloffRate;
		}
		HeadRunSpeed = Mathf.Min(HeadPitchFrequencyToSpeedFactor * frequencyOfHeadPitches, MaxHeadRunSpeed);
		//Debug.Log("HeadRunSpeed : " + HeadRunSpeed.ToString("G4"));
		//Debug.Log("frequencyOfHeadPitches : " + frequencyOfHeadPitches.ToString("G4"));
		previousPitch = pitch;
	}
	
	bool IsHeadPitchedUp(float prevP, float p) {
		return (prevP > PitchMagnitudeUp || prevP < 180.0f) && (p <= PitchMagnitudeUp && p > 180.0f);
	}
	
	bool IsHeadPitchedDown(float prevP, float p) {
		return (prevP < PitchMagnitudeDown || prevP > 180.0f) && (p >= PitchMagnitudeDown && p < 180.0f);
	}
	
	void UpdatePeeing() {
		if (audio.isPlaying) {
			peeingDuration += Time.deltaTime;
		}
		
		if (peeingLeft) {
			if (!IsTiltingLeft() ||
				peeingDuration > MaxPeeDuration) {
				peeingLeft = false;
				FadePeeSoundToStop();
			}
		} else if (peeingRight) {
			if (!IsTiltingRight() ||
				peeingDuration > MaxPeeDuration) {
				peeingRight = false;
				FadePeeSoundToStop();
			}
		} else if (!audio.isPlaying) {
			if (IsTiltingLeft()) {
				peeingLeft = true;
				StartPeeSound();
			} else if (IsTiltingRight()) {
				peeingRight = true;
				StartPeeSound();
			}
		} else {
			FadePeeSoundToStop();
		}
	}
	
	bool IsTiltingRight() {
		Vector3 eulers = camControl.CameraLeft.transform.eulerAngles;
		
		return eulers.z < 180.0f && eulers.z > 40.0f;
	}
	
	bool IsTiltingLeft() {
		Vector3 eulers = camControl.CameraLeft.transform.eulerAngles;
		
		return eulers.z > 180.0f && eulers.z < 320.0f;
	}
	
	void StartPeeSound() {
		if (Random.value < 0.5) {
			audio.clip = PeeClip1;
			audio.Play();
		} else {
			audio.clip = PeeClip2;
			audio.Play();
		}
		audio.volume = 1.0f;
	}
	
	void FadePeeSoundToStop() {
		if (peeingDuration >= MaxPeeDuration) {
			audio.Stop();
			peeingDuration = 0.0f;
		} else if (audio.isPlaying) {
			float currentVolume = audio.volume;
			
			currentVolume -= Time.deltaTime;
			
			if (currentVolume <= 0.0f) {
				audio.Stop();
				peeingDuration = 0.0f;
			} else {
				audio.volume = currentVolume;
			}
		}
	}
}
