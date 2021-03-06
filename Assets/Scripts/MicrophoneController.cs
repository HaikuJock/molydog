using UnityEngine;
using System.Collections;

public class MicrophoneController : MonoBehaviour {
	
	public MicrophoneInput input;
	
	public float barkLoudness=40.0f;
	public float pantLoudness=2.0f;
	
	public bool barked=false;
	public bool pant=false;
	string displayText="";
	
	TutorialManagerScript tutorial;
	GameManagerScript gameManager;

	float pitch=0.0f;
	float freq=0.0f;
	float loudness=0.0f;
	
	float micRefreshTime=3.0f;
	float micCurrentTime=0.0f;
	bool refreshTime=false;
	bool debug=false;
	// Use this for initialization
	void Start () {
		GameObject tutorialObject = GameObject.FindGameObjectWithTag("Tutorial");
		GameObject managerObject = GameObject.FindGameObjectWithTag("GameController");
		
		tutorial = tutorialObject.GetComponent<TutorialManagerScript>();
		gameManager = managerObject.GetComponent<GameManagerScript>();
	}
	
	void ResetRefreshTimer()
	{
		micCurrentTime=0.0f;
		refreshTime=false;
	}
	
	void ResetController()
	{
		barked=false;
		pant=false;		
	}
	// Update is called once per frame
	void Update () {
		pitch=input.pitch;
		freq=input.frequency;
		loudness=input.loudness;
		if (input.loudness>barkLoudness)
		{
			refreshTime=true;
			DoBark();
		}
		if (refreshTime)
		{
			micCurrentTime+=Time.deltaTime;
			if (micCurrentTime>micRefreshTime)
			{
				ResetRefreshTimer();
				ResetController();
				
			}
		}
	}
	
	void OnGUI()
	{
		if (barked){
			if (debug){
			GUI.Label(new Rect(10,10,400,100),string.Format("{0} pitch - {1} freq - {2} loudness - {3}",displayText,
				pitch, freq,loudness));
			}
		}
	}
	
	void DoBark()
	{
		gameManager.IncrementBarkCount();
		tutorial.DidBark();

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
