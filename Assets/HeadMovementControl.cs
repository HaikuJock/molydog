using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class HeadMovementControl : MonoBehaviour {
	public OVRCameraController camControl;
	public AudioClip PeeClip1;
	public AudioClip PeeClip2;
	
	private bool peeingLeft;
	private bool peeingRight;
	private float peeingDuration;
	
	static float MaxPeeDuration = 16.323f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
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
