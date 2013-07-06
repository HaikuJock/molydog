using UnityEngine;
using System.Collections;

public class MicrophoneController : MonoBehaviour {
	
	public MicrophoneInput input;
	
	public float barkLoudness=40.0f;
	public float pantLoudness=2.0f;
	
	public bool barked=false;
	public bool pant=false;
	string displayText="";
	
	float pitch=0.0f;
	float freq=0.0f;
	float loudness=0.0f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		pitch=input.pitch;
		freq=input.frequency;
		loudness=input.loudness;
		if (input.loudness>barkLoudness)
		{

			DoBark();
		}
		else if (input.loudness>pantLoudness && input.loudness<barkLoudness){
			DoPant();
		}
		else
		{
			barked=false;
			pant=false;
		}


	}
	
	void OnGUI()
	{
		GUI.Label(new Rect(10,10,400,100),string.Format("{0} pitch - {1} freq - {2} loudness - {3}",displayText,
			pitch, freq,loudness));
	}
	
	void DoBark()
	{
		barked=true;
		displayText="Bark";
	}
	
	void DoPant()
	{
		barked=false;
		pant=true;
		displayText="Pant";	
	}
}
