using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class HeadMovementControl : MonoBehaviour {
	public OVRCameraController camControl;
	
	TutorialManagerScript tutorial;
	GameManagerScript gameManager;
	// Peeing
	public AudioClip PeeClip1;
	public AudioClip PeeClip2;
	public AudioClip Pant1;
	public AudioClip Pant2;
	public AudioClip Pant3;
	public AudioClip Pant4;
	public AudioClip Pant5;
	public AudioClip Pant6;
	
	private bool peeingLeft;
	private bool peeingRight;
	private bool playingPantSound;
	private bool playingPeeSound;
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
	
	public bool pee=false;

	
	// Use this for initialization
	void Start () {
		GameObject tutorialObject = GameObject.FindGameObjectWithTag("Tutorial");
		GameObject managerObject = GameObject.FindGameObjectWithTag("GameController");
		
		tutorial = tutorialObject.GetComponent<TutorialManagerScript>();
		gameManager = managerObject.GetComponent<GameManagerScript>();
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.P))
		{
			StartPeeSound();
			pee=true;
			peeingLeft = true;
		}
		if (false && Input.GetKeyDown(KeyCode.LeftShift))
		{
			HeadRunSpeed=MaxHeadRunSpeed;
		}
		//else
		///{
		//	HeadRunSpeed=1.0f;
		//}
		if (!audio.isPlaying) {
			playingPantSound = false;
			playingPeeSound = false;
		}
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
				gameManager.IncrementHeadBobCount();
				tutorial.DidRun();
			}
			timeOfLastUpPitch = Time.time;
		} else if (IsHeadPitchedDown(previousPitch, pitch)) {
			if (timeOfLastDownPitch > 0.0f) {
				float timeBetweenDownPitches = Time.time - timeOfLastDownPitch;
				
				frequencyOfHeadDownPitches = 1.0f / timeBetweenDownPitches;
				frequencyOfHeadPitches = Mathf.Max(frequencyOfHeadUpPitches, frequencyOfHeadDownPitches);
				//Debug.Log("Down");
				gameManager.IncrementHeadBobCount();
				tutorial.DidRun();
			}
			timeOfLastDownPitch = Time.time;
		} else if ((Time.time - timeOfLastDownPitch) > Mathf.Min((1.0f / frequencyOfHeadDownPitches) * 0.1f, 1.5f) &&
				   (Time.time - timeOfLastUpPitch) > Mathf.Min((1.0f / frequencyOfHeadUpPitches) * 0.1f, 1.5f)) {
			frequencyOfHeadPitches -= Time.deltaTime * HeadPitchFrequencyFalloffRate;
			if (frequencyOfHeadPitches > 1.5f && !audio.isPlaying && !playingPantSound && Random.value < 0.2f) {
				playingPantSound = true;
				float randomPant = Random.value;
				
				if (randomPant < 0.1667f) {
					audio.clip = Pant1;
				} else if (randomPant < 0.3333f) {
					audio.clip = Pant2;
				} else if (randomPant < 0.5f) {
					audio.clip = Pant3;
				} else if (randomPant < 0.6667f) {
					audio.clip = Pant4;
				} else if (randomPant < 0.8333f) {
					audio.clip = Pant5;
				} else {
					audio.clip = Pant6;
				}
				audio.Play();
				audio.volume = Random.Range(0.8f, 1.0f);
			}
		}
		HeadRunSpeed = Mathf.Min(HeadPitchFrequencyToSpeedFactor * frequencyOfHeadPitches, MaxHeadRunSpeed);
		//Debug.Log("HeadRunSpeed : " + HeadRunSpeed.ToString("G4"));
		//Debug.Log("frequencyOfHeadPitches : " + frequencyOfHeadPitches.ToString("G4"));
		previousPitch = pitch;
	}
	
	public void PlayerStopped() {
		frequencyOfHeadPitches = 1.0f / HeadPitchFrequencyToSpeedFactor;
		frequencyOfHeadDownPitches = frequencyOfHeadPitches;
		frequencyOfHeadUpPitches = frequencyOfHeadPitches;
		HeadRunSpeed = 1.0f;
	}
	
	bool IsHeadPitchedUp(float prevP, float p) {
		return ((prevP > PitchMagnitudeUp || prevP < 180.0f) && (p <= PitchMagnitudeUp && p > 180.0f)) || Input.GetKeyDown(KeyCode.I);
	}
	
	bool IsHeadPitchedDown(float prevP, float p) {
		return (prevP < PitchMagnitudeDown || prevP > 180.0f) && (p >= PitchMagnitudeDown && p < 180.0f);
	}
	
	void UpdatePeeing() {
		if (audio.isPlaying && playingPeeSound) {
			peeingDuration += Time.deltaTime;
		}
		
		if (peeingLeft) {
			gameManager.AddLitresOfUrine(Time.deltaTime * 1.5f);
			if (!IsTiltingLeft() ||
				peeingDuration > MaxPeeDuration) {
				peeingLeft = false;
				FadePeeSoundToStop();
			}
		} else if (peeingRight) {
			gameManager.AddLitresOfUrine(Time.deltaTime * 1.5f);
			if (!IsTiltingRight() ||
				peeingDuration > MaxPeeDuration) {
				peeingRight = false;
				FadePeeSoundToStop();
			}
		} else if (!audio.isPlaying && !playingPeeSound) {
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
		tutorial.DidPee();
		pee=true;
		playingPeeSound = true;
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
		if (!playingPeeSound) {
			peeingDuration = 0.0f;
			return;
		}
		if (peeingDuration >= MaxPeeDuration) {
			audio.Stop();
			peeingDuration = 0.0f;
			
		} else if (audio.isPlaying) {
			float currentVolume = audio.volume;
			
			currentVolume -= Time.deltaTime;
			
			if (currentVolume <= 0.0f) {
				audio.Stop();
				peeingDuration = 0.0f;
				pee=false;
			} else {
				audio.volume = currentVolume;
			}
		}
	}
}
