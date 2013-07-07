using UnityEngine;
using System.Collections;

public class GameManagerScript : MonoBehaviour {
	private int headBobCount;
	private int barkCount;
	private float embarrassment;
	private float litresOfUrine;
	private float gameTimer;
	private bool gameOver;
	private bool showGameTimer;
	
	const float FadeDuration = 0.3f;
	const float GameDuration = 180.0f;
	
	// Use this for initialization
	void Start () {
		embarrassment = 0;
		headBobCount = 0;
		barkCount = 0;
		litresOfUrine = 0.0f;
		gameTimer = 0.0f;
		gameOver = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (gameOver) {
			return;
		}
		if (Input.GetKeyDown(KeyCode.U) == true) {
			OnGameOver();
		}

		gameTimer += Time.deltaTime;
		float timeRemaining = GameDuration - gameTimer;
		if (timeRemaining < 10.0f ||
			(timeRemaining >= 57.0f && timeRemaining <= 61.0f) ||
			(timeRemaining >= 117.0f && timeRemaining <= 121.0f) ||
			(timeRemaining >= 173.0f && timeRemaining <= 180.0f)){
			showGameTimer = true;
		} else {
			showGameTimer = false;
		}
		if (gameTimer >= GameDuration) {
			OnGameOver();
		}
	}
	
	public void IncrementHeadBobCount() {
		if (gameOver) {
			return;
		}
		++headBobCount;
	}
	
	public void IncrementBarkCount() {
		if (gameOver) {
			return;
		}
		++barkCount;
	}
	
	public void AddLitresOfUrine(float litres) {
		if (gameOver) {
			return;
		}
		litresOfUrine += litres;
	}
	
	public void SetMinimumEmbarrassment(float minEmbarrassment) {
		if (gameOver) {
			return;
		}
		embarrassment = Mathf.Max (embarrassment, minEmbarrassment);
		if (embarrassment >= DogScript.MaxEmbarrassment) {
			OnGameOver();
		}
	}
	
	public bool IsGameOver() {
		return gameOver;
	}
	
	private void OnGameOver() {
		gameOver = true;
	}
	
	void OnGUI()
	{
		if (showGameTimer)
		{
			float timeRemaining = GameDuration - gameTimer;
			if (timeRemaining < 0.0f) {
				timeRemaining = 0.0f;
			}
			int minutesRemaining = (int)(timeRemaining / 60.0f);
			timeRemaining -= (float)minutesRemaining * 60.0f;
			int secondsRemaining = (int)timeRemaining;
			string timeRemainingString = "0" + minutesRemaining.ToString() + ":" +
										 (secondsRemaining < 10 ? "0" + secondsRemaining.ToString() : secondsRemaining.ToString());

			GameObject hudObject = GameObject.FindGameObjectWithTag("Player");
			HUDScript hudScript = hudObject.GetComponent<HUDScript>();
			
			hudScript.ShowTimeMessage(timeRemainingString);
			//GuiHelper.StereoBox(800, 40, 64, 64, ref timeRemainingString, Color.yellow);
		}
		if (gameOver) {
			ShowGameOverMessages();
		}
	}
	
	void ShowGameOverMessages()
	{
		string gameOverMessage0 = "Game Over\n";
		
		embarrassment = Mathf.Min(embarrassment, DogScript.MaxEmbarrassment);
		
		string score = ((int)((embarrassment / DogScript.MaxEmbarrassment) * 100.0f)).ToString();
		
		string gameOverMessage1 = "Score : " + score + "\n";
		string gameOverMessage2 = "Head-bob count : " + headBobCount.ToString() + "\n";
		string gameOverMessage3 = "Bark count : " + barkCount.ToString() + "\n";
		string gameOverMessage4 = "Urine : " + litresOfUrine.ToString("G1") + "l\n";
		//gameOverMessage += "Head-bob count : " + headBobCount.ToString() + "\n";
		//gameOverMessage += "Head-bob count : " + headBobCount.ToString() + "\n";
		GameObject hudObject = GameObject.FindGameObjectWithTag("Player");
		HUDScript hudScript = hudObject.GetComponent<HUDScript>();
		
		int startY = 200;
		int yIncrement = 30;
		hudScript.AddGameOverMessage(490, startY, 300, 23, ref gameOverMessage0, Color.yellow);
		startY += yIncrement;
		hudScript.AddGameOverMessage(490, startY, 300, 23, ref gameOverMessage1, Color.yellow);
		startY += yIncrement;
		hudScript.AddGameOverMessage(490, startY, 300, 23, ref gameOverMessage2, Color.yellow);
		startY += yIncrement;
		hudScript.AddGameOverMessage(490, startY, 300, 23, ref gameOverMessage3, Color.yellow);
		startY += yIncrement;
		hudScript.AddGameOverMessage(490, startY, 300, 23, ref gameOverMessage4, Color.yellow);
	}
}