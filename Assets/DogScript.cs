using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class DogScript : MonoBehaviour {
	public OVRPlayerController PlayerController;
	public float currentEmbarrassment;
	public int currentObserverCount;
	public AudioClip WuffClip;
	public AudioClip HappyBark1Clip;
	public AudioClip HappyBark2Clip;
	public AudioClip HowlClip;
	public AudioClip Panting3SecondsClip;
	public AudioClip ThreePants1Clip;
	public AudioClip OhYeahClip;
	public AudioClip ThreeAngryBarksClip;
	const float MinAttractionDistance = 20.0f;
	const float UseageDistance = 3.0f;
	static float AttractionSpeedFactor = 0.5f;
	static float MaxEmbarrassment = 30.0f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		UpdateAttractionToEmbarrassmentPoints();
	}
	
	void PlayAngryNoise() {
		if (audio.isPlaying) {
			return;
		}
		audio.PlayOneShot(ThreeAngryBarksClip, Random.RandomRange(0.8f, 1.0f));
	}
	
	void PlayHappyNoise() {
		if (audio.isPlaying) {
			return;
		}
		float randomNoise = Random.RandomRange(0.0f, 1.0f);
		float randomVolume = Random.RandomRange(0.8f, 1.0f);
		float embarrassmentPortion = currentEmbarrassment / MaxEmbarrassment;
		
		if (embarrassmentPortion < 0.5f) {
			if (randomNoise < 0.33333f) {
				audio.PlayOneShot(WuffClip, randomVolume);
			} else if (randomNoise < 0.66666f) {
				audio.PlayOneShot(HappyBark1Clip, randomVolume);
			} else {
				audio.PlayOneShot(HappyBark2Clip, randomVolume);
			}
		} else {
			if (randomNoise < 0.5f) {
				audio.PlayOneShot(Panting3SecondsClip, randomVolume);
			} else {
				audio.PlayOneShot(ThreePants1Clip, randomVolume);
			}
		}
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
				if (distanceSquared < UseageDistance*UseageDistance) {
					UseEmbarrassmentPoint(ptOfEmbarrassmentScript);
				}
			}
		}
	}
	
	void UseEmbarrassmentPoint(PointOfEmbarrassmentScript ptOfEmbarrassmentScript) {
		GameObject playerObject = GameObject.FindGameObjectWithTag("Player");
		HUDScript hudScript = playerObject.GetComponent<HUDScript>();
		float embarrassmentPortion = currentEmbarrassment / MaxEmbarrassment;
		
		ptOfEmbarrassmentScript.Use(this);
		hudScript.SetEmbarrassmentPortion(embarrassmentPortion);
		
		if (embarrassmentPortion >= 1.0f) {
			audio.PlayOneShot(OhYeahClip, Random.RandomRange(0.8f, 1.0f));
		} else {
			PlayHappyNoise();
		}
	}
	
	void AttractPlayerToEmbarrassmentPoint(GameObject closeObject) {
		Vector3 toAttraction = closeObject.transform.position - PlayerController.transform.position;
		float distance = Vector3.Magnitude(toAttraction);
		PointOfEmbarrassmentScript ptOfEmbarrassmentScript = closeObject.GetComponent<PointOfEmbarrassmentScript>();
		float distancePortion = (1.0f - distance / MinAttractionDistance);
		float attractionPortion = Mathf.SmoothStep(0.0f, 1.0f, Mathf.SmoothStep(0.0f, 1.0f, distancePortion));
		float attractionMagnitude = attractionPortion * Time.deltaTime * ptOfEmbarrassmentScript.AttractionLevel;
		
		PlayerController.AddAttractionMove(Vector3.Normalize(toAttraction) * attractionMagnitude * AttractionSpeedFactor);
	}		
}
