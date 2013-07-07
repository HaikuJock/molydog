using UnityEngine;
using System.Collections;

public class TutorialManagerScript : MonoBehaviour {
	
	HUDScript hudScript;
	GameManagerScript gameManager;
	public bool HasMoved;
	public bool HasRun;
	public bool HasPeed;
	public bool HasBarked;
	public bool HasBarkedTwice;
	private float barkAgainTime;
	
	private bool showingHasMoved;
	private bool showingHasRun;
	private bool showingHasPeed;
	private bool showingHasBarked;
	private bool showingHasBarkedTwice;
	private bool finished;
	
	// Use this for initialization
	void Start () {
		GameObject hudObject = GameObject.FindGameObjectWithTag("Player");
		GameObject managerObject = GameObject.FindGameObjectWithTag("GameController");
		
		gameManager = managerObject.GetComponent<GameManagerScript>();
		hudScript = hudObject.GetComponent<HUDScript>();
	}
	
	// Update is called once per frame
	void Update () {
		if (finished) {
			return;
		}
		if (!HasMoved) {
			if (!showingHasMoved) {
				hudScript.ShowMessage("Use W, A, S, D to move", 180.0f);
				showingHasMoved = true;
			}
		} else if (!HasRun) {
			if (!showingHasRun) {
				hudScript.ShowMessage("Bob your head up and down to run", 180.0f);
				showingHasRun = true;
			}
		} else if (!HasPeed) {
			if (!showingHasPeed) {
				hudScript.ShowMessage("Tilt your head to pee", 180.0f);
				showingHasPeed = true;
			}
		} else if (!HasBarked) {
			if (!showingHasBarked) {
				hudScript.ShowMessage("To bark, just bark...", 180.0f);
				showingHasBarked = true;
			}
		} else if (!HasBarkedTwice) {
			if (!showingHasBarkedTwice) {
				hudScript.ShowMessage("...that's right, Bark!", 180.0f);
				showingHasBarkedTwice = true;
			}
		} else {
			hudScript.ShowMessage(null, 0.0f);
			hudScript.EnqueueMessage("Embarrass your owner before the end of your walk.", 3.3f);
			hudScript.EnqueueMessage("A green fringe indicates you are being observed.", 3.3f);
			hudScript.EnqueueMessage("It's more embarrassing to your owner when...", 3.3f);
			hudScript.EnqueueMessage("...you are observed being mischievous.", 3.3f);
			finished = true;
			gameManager.StartGame();
		}
	}
	
	public void DidMove() { HasMoved = true; }
	
	public void DidRun() { HasRun = true; }
	
	public void DidPee() { HasPeed = true; }
	
	public void DidBark() { 
		if (HasBarked && Time.time > barkAgainTime) {
			HasBarkedTwice = true;
		}
		if (!HasBarked) {
			barkAgainTime = Time.time + 0.5f;
		}
		HasBarked = true;
	}
}
