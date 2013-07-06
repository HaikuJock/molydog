using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class MicrophoneInput : MonoBehaviour {
	
	public AudioClip  audioClip;
	public float sensitivity = 100;
    public float loudness = 0;
	public float pitch=0;
	public float frequency=0;
	
	// Use this for initialization
	void Start () {
		audioClip=Microphone.Start(null,true,1,44100);
		audio.clip=audioClip;
		audio.playOnAwake=false;
		audio.loop = true; // Set the AudioClip to loop
		audio.mute = true; // Mute the sound, we don't want the player to hear it
		while (!(Microphone.GetPosition(null) > 0)){} // Wait until the recording has started
		audio.Play(); // Play the audio source!
	}
	
	// Update is called once per frame
	void Update () {
		loudness = GetAveragedVolume() * sensitivity;
		pitch=GetAveragePitch()* sensitivity;
		
	}
	
	
	float GetAveragedVolume()
	{ 
    	float[] data = new float[256];
    	float a = 0;
    	audio.GetOutputData(data,0);
    	foreach(float s in data)
    	{
        	a += Mathf.Abs(s);
    	}
    	return a/256;
	}
	
	float GetAveragePitch()
	{
		float[] data=new float[256];
		float a=0;
		audio.GetSpectrumData(data,0,FFTWindow.BlackmanHarris);
		foreach(float s in data)
		{
			a+=Mathf.Abs(s);
		}
		
		return a/256;
	}
	
	
}
