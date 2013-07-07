using UnityEngine;
using System.Collections;

public class TutorialManagerScript : MonoBehaviour {
	
	HUDScript hudScript;
	GameManagerScript gameManager;
	public bool HasMoved;
	public bool HasMouseRotated;
	public bool HasRun;
	public bool HasPeed;
	public bool HasBarked;
	public bool HasBarkedTwice;
	private float timer;
	
	private bool showingHasMoved;
	private bool showingHasMouseRotated;
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
		const float minTime = 4.0f;
		timer += Time.deltaTime;
		if (!HasMoved) {
			if (!showingHasMoved) {
				hudScript.ShowMessage("Use W, A, S, D to move", 180.0f);
				showingHasMoved = true;
				timer = 0.0f;
			}
		} else if (!HasMouseRotated) {
			if (!showingHasMouseRotated && timer > minTime) {
				hudScript.ShowMessage("Use the mouse to assist turning", 180.0f);
				showingHasMouseRotated = true;
				timer = 0.0f;
			}
		} else if (!HasRun) {
			if (!showingHasRun && timer > minTime) {
				hudScript.ShowMessage("Bob your head up and down to run", 180.0f);
				showingHasRun = true;
				timer = 0.0f;
			}
		} else if (!HasPeed) {
			if (!showingHasPeed && timer > minTime) {
				hudScript.ShowMessage("Tilt your head to pee", 180.0f);
				showingHasPeed = true;
				timer = 0.0f;
			}
		} else if (!HasBarked) {
			if (!showingHasBarked && timer > minTime) {
				hudScript.ShowMessage("To bark, just bark...", 180.0f);
				showingHasBarked = true;
				timer = 0.0f;
			}
		} else if (!HasBarkedTwice) {
			if (!showingHasBarkedTwice && timer > minTime) {
				hudScript.ShowMessage("...that's right, Bark!", 180.0f);
				showingHasBarkedTwice = true;
				timer = 0.0f;
			}
		} else if (timer > minTime) {
			hudScript.ShowMessage(null, 0.0f);
			hudScript.EnqueueMessage("Embarrass your owner before the end of your walk.", 3.3f);
			hudScript.EnqueueMessage("A green fringe indicates you are being observed.", 3.3f);
			hudScript.EnqueueMessage("It's more embarrassing to your owner when...", 3.3f);
			hudScript.EnqueueMessage("...you are observed being mischievous.", 3.3f);
			finished = true;
			gameManager.StartGame();
		}
	}
	
	public void DidMove() {
		if (showingHasMoved) {
			HasMoved = true;
		}
	}
	
	public void DidMouseRotate() {
		if (showingHasMouseRotated) {
			HasMouseRotated = true;
		}
	}
	
	public void DidRun() {
		if (showingHasRun) {
			HasRun = true;
		}
	}
	
	public void DidPee() {
		if (showingHasPeed) {
			HasPeed = true;
		}
	}
	
	public void DidBark() { 
		if (HasBarked && showingHasBarkedTwice) {
			HasBarkedTwice = true;
		}
		if (showingHasBarked) {
			HasBarked = true;
		}
	}
}
