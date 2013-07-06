using UnityEngine;
using System.Collections;

public class PointOfEmbarrassmentScript : MonoBehaviour {
	public float AttractionLevel = 0.0f;
	public float EmbarrassmentLevel = 0.0f;
	public float ObservedEmbarrassmentFactor = 0.0f;
	public float UsedTimer = 0.0f;
	public bool SingleUse = false;
	
	static float ReUseTime = 20.0f;
	
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
}
