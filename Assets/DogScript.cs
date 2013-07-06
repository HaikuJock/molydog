using UnityEngine;
using System.Collections;

public class DogScript : MonoBehaviour {
	public OVRPlayerController PlayerController;
	public float currentEmbarrassment;
	const float MinAttractionDistance = 20.0f;
	static float AttractionSpeedFactor = 0.5f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		UpdateAttractionToEmbarrassmentPoints();
	}
	
	void UpdateAttractionToEmbarrassmentPoints() {
		GameObject[] objects = GameObject.FindGameObjectsWithTag("PointOfEmbarrassment");
		Vector3 pt = PlayerController.transform.position;
		
		foreach (GameObject embarrasmentObject in objects) {
			PointOfEmbarrassmentScript ptOfEmbarrassmentScript = embarrasmentObject.GetComponent<PointOfEmbarrassmentScript>();
			float distanceSquared = Vector3.SqrMagnitude(embarrasmentObject.transform.position - pt);
			
			if (ptOfEmbarrassmentScript.UsedTimer <= 0.0f &&
				distanceSquared < MinAttractionDistance * MinAttractionDistance) {
				AttractPlayerToEmbarrassmentPoint(embarrasmentObject);
			}
		}
	}
	
	void AttractPlayerToEmbarrassmentPoint(GameObject closeObject) {
		Vector3 toAttraction = closeObject.transform.position - PlayerController.transform.position;
		float distance = Vector3.Magnitude(toAttraction);
		PointOfEmbarrassmentScript ptOfEmbarrassmentScript = closeObject.GetComponent<PointOfEmbarrassmentScript>();
		float distancePortion = (1.0f - distance / MinAttractionDistance);
		float attractionPortion = Mathf.SmoothStep(0.0f, 1.0f, Mathf.SmoothStep(0.0f, 1.0f, distancePortion));
		float attractionMagnitude = attractionPortion * Time.deltaTime * ptOfEmbarrassmentScript.AttractionLevel;
		
		PlayerController.Move(Vector3.Normalize(toAttraction) * attractionMagnitude * AttractionSpeedFactor);
	}		
}
