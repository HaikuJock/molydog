using UnityEngine;
using System.Collections;

public class PointOfEmbarrassmentScript : MonoBehaviour {
	
	public enum PlayerActions
	{
		none=0,
		bark,
		sniff,
		pee
	};
	private OVRGUI  		GuiHelper 		 = new OVRGUI();
	public float AttractionLevel = 0.0f;
	public float EmbarrassmentLevel = 0.0f;
	public float ObservedEmbarrassmentFactor = 0.0f;
	public float UsedTimer = 0.0f;
	public bool SingleUse = false;
	
	static float ReUseTime = 20.0f;
	
	//what type of action will resolve this Embarrassment
	public PlayerActions playerActions=PlayerActions.none;
	public string helperText="";
	
	public bool showHelperText=false;
	public float messageXPosition=50;
	
	// Use this for initialization
	void Start () {
	
	}
	
	public void Use(DogScript dogScript) {
		dogScript.currentEmbarrassment += EmbarrassmentLevel * (1.0f + (float)dogScript.currentObserverCount);
		UsedTimer = ReUseTime;
	}
	
	// Update is called once per frame
	void Update () {
		if (UsedTimer > 0.0f && !SingleUse) {
			UsedTimer -= Time.deltaTime;
		}
	}
	
	void OnTriggerEnter(Collider c)
	{
		if (c.tag=="Player")
		{
			showHelperText=true;
			DogScript dogScript=c.gameObject.GetComponent<DogScript>();
			//Use(dogScript);
		}
	}
	
	void OnTriggerExit(Collider c)
	{
		if (c.tag=="Player")
		{
			//stop displaying message
			showHelperText=false;
		}
	}
	
	void OnGUI()
	{
		if (showHelperText)
		{
			
			GuiHelper.StereoBox(40, 40, 300, 40, ref helperText, Color.yellow);
		}
	}
}
