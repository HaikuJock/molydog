using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HUDScript : MonoBehaviour {
	
	class HUDMessage {
		public string message;
		public float duration;
		
		public HUDMessage(string m, float d) {
			message = m;
			duration = d;
		}
	};
	
	class GameOverHUDMessage {
		public string message;
		public int x;
		public int y;
		public int w;
		public int h;
		public Color clr;
		
		public GameOverHUDMessage(string m, int x, int y, int w, int h, Color clr) {
			message = m;
			this.x = x;
			this.y = y;
			this.w = w;
			this.h = h;
			this.clr = clr;
		}
	};
	
	public float 	FadeInTime    		= 2.0f;
	public Texture 	FadeInTexture 		= null;
	public Texture 	ObservedStatusTexture = null;
	public Texture	EmbarrassmentMeterTexture = null;
	public Texture	EmbarrassmentMeterBorderTexture = null;
	public Font 	FontReplace			= null;
	
	private Queue<HUDMessage> messageQueue = new Queue<HUDMessage>();
	private OVRGUI  		GuiHelper 		 = new OVRGUI();
	private GameObject      GUIRenderObject  = null;
	private RenderTexture	GUIRenderTexture = null;
	private OVRCameraController CameraController = null;
	private float  AlphaFadeValue	= 1.0f;
	private int    	StartX			= 490;
	private int    	StartY			= 300;
	private int    	WidthX			= 300;
	private int    	WidthY			= 23;
	private int detectedByCivilianCount = 0;
	private int detectedByParkKeeperCount = 0;
	private float meterShowTimer = -1.0f;
	private float displayedEmbarrassmentPortion = 0.0f;
	private float targetEmbarrassmentPortion = 0.0f;
	private string message = "";
	private float messageTimer;
	private float messageDuration;
	private List<GameOverHUDMessage> gameOverMessages = new List<GameOverHUDMessage>();
	private string topLeftMessage;
	private float topLeftMessageExpireTime;
	private string timeMessage;
	private float timeMessageExpireTime;
	
	const float MeterFadeDuration = 0.6f;
	const float MeterShowDuration = 4.3f;
	const float MessageFadeDuration = 0.6f;
	
	public void OnStartDetectedByCivilian() {
		detectedByCivilianCount++;
	}
	
	public void OnEndDetectedByCivilian() {
		detectedByCivilianCount--;
	}
	
	public void OnStartDetectedByParkKeeper() {
		detectedByParkKeeperCount++;
	}
	
	public void OnEndDetectedByParkKeeper() {
		detectedByParkKeeperCount--;
	}
	
	public void SetEmbarrassmentPortion(float newPortion) {
		newPortion = Mathf.Clamp(newPortion, 0.0f, 1.0f);
		targetEmbarrassmentPortion = newPortion;
		if (newPortion > displayedEmbarrassmentPortion) {
			ShowMessage("Owner Embarrassment Increased :-)", 4.9f);
		} else if (newPortion < displayedEmbarrassmentPortion) {
			ShowMessage("Owner Embarrassment Decreased :-(", 4.9f);
		}
		
		if (IsMeterFadingIn()) {
			// continue fading in
		} else if (IsMeterFadingOut()) {
			meterShowTimer = MeterShowDuration - meterShowTimer; // fade back in
		} else if (IsMeterShowing()) {
			meterShowTimer = MeterFadeDuration;
		} else {
			meterShowTimer = 0.0f;
		}
	}
	
	public void ShowMessage(string messageToShow, float duration) {
		message = messageToShow;
		messageTimer = 0.0f;
		messageDuration = duration;
	}
	
	private bool IsMeterShowing() {
		return meterShowTimer >= 0.0f;
	}
	
	private bool IsMeterFadingIn() {
		return meterShowTimer >= 0.0f && meterShowTimer < MeterFadeDuration;
	}
	
	private bool IsMeterFadingOut() {
		return meterShowTimer >= (MeterShowDuration - MeterFadeDuration) && meterShowTimer < MeterShowDuration;
	}
	
	private float MeterAlpha() {
		if (IsMeterFadingIn()) {
			return meterShowTimer / MeterFadeDuration;
		} else if (IsMeterFadingOut()) {
			float portion = 1.0f - (meterShowTimer - (MeterShowDuration - MeterFadeDuration)) / MeterFadeDuration;
			return Mathf.Clamp(portion, 0.0f, 1.0f);
		} else if (IsMeterShowing()) {
			return 1.0f;
		} else {
			return 0.0f;
		}
	}
	
	void Awake() {
		OVRCameraController[] CameraControllers;
		CameraControllers = gameObject.GetComponentsInChildren<OVRCameraController>();
		
		if(CameraControllers.Length == 0)
			Debug.LogWarning("OVRMainMenu: No OVRCameraController attached.");
		else if (CameraControllers.Length > 1)
			Debug.LogWarning("OVRMainMenu: More then 1 OVRCameraController attached.");
		else
			CameraController = CameraControllers[0];
	}
	
	public void EnqueueMessage(string messageToEnqueue, float duration) {
		messageQueue.Enqueue(new HUDMessage(messageToEnqueue, duration));
	}
	
	public void ShowTopLeftMessage(string messageToShow) {
		topLeftMessage = messageToShow;
		topLeftMessageExpireTime = Time.time + 0.5f;
	}
	
	public void ShowTimeMessage(string messageToShow) {
		timeMessage = messageToShow;
		timeMessageExpireTime = Time.time + 0.5f;
	}
	
	// Use this for initialization
	void Start () {
		AlphaFadeValue = 1.0f;
		meterShowTimer = -1.0f;
		targetEmbarrassmentPortion = 0.0f;
		displayedEmbarrassmentPortion = 0.0f;
		
		if(CameraController != null)
		{
			GuiHelper.SetCameraController(ref CameraController);
		}

				// Set the GUI target 
		GUIRenderObject = GameObject.Instantiate(Resources.Load("OVRGUIObjectMain")) as GameObject;
		
		if(GUIRenderObject != null)
		{
			if(GUIRenderTexture == null)
			{
				int w = Screen.width;
				int h = Screen.height;

				if(CameraController.PortraitMode == true)
				{
					int t = h;
					h = w;
					w = t;
				}
						
				GUIRenderTexture = new RenderTexture(w, h, 24);	
				GuiHelper.SetPixelResolution(w, h);
				GuiHelper.SetDisplayResolution(OVRDevice.HResolution, OVRDevice.VResolution);
			}
		}
		
		// Attach GUI texture to GUI object and GUI object to Camera
		if(GUIRenderTexture != null && GUIRenderObject != null)
		{
			GUIRenderObject.renderer.material.mainTexture = GUIRenderTexture;
			
			if(CameraController != null)
			{
				// Grab transform of GUI object
				Transform t = GUIRenderObject.transform;
				// Attach the GUI object to the camera
				CameraController.AttachGameObjectToCamera(ref GUIRenderObject);
				// Reset the transform values (we will be maintaining state of the GUI object
				// in local state)
				OVRUtils.SetLocalTransform(ref GUIRenderObject, ref t);
				// Deactivate object until we have completed the fade-in
				// Also, we may want to deactive the render object if there is nothing being rendered
				// into the UI
				// we will move the position of everything over to the left, so get
				// IPD / 2 and position camera towards negative X
				Vector3 lp = GUIRenderObject.transform.localPosition;
				float ipd = 0.0f;
				CameraController.GetIPD(ref ipd);
				lp.x -= ipd * 0.5f;
				GUIRenderObject.transform.localPosition = lp;
				
				GUIRenderObject.SetActive(false);
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		/*
		// Test: Incrment civ count with u, dec with i
		if (Input.GetKeyDown(KeyCode.U) == true) {
			OnStartDetectedByCivilian();
		} else if (Input.GetKeyDown(KeyCode.I) == true) {
			OnEndDetectedByCivilian();
		}
		// Test: Incrment keeper count with j, dec with k
		if (Input.GetKeyDown(KeyCode.J) == true) {
			OnStartDetectedByParkKeeper();
		} else if (Input.GetKeyDown(KeyCode.K) == true) {
			OnEndDetectedByParkKeeper();
		}
		// Test: Increment/decrement embarrassment portion
		if (Input.GetKeyDown(KeyCode.N) == true) {
			SetEmbarrassmentPortion(targetEmbarrassmentPortion + 0.1f);
		} else if (Input.GetKeyDown(KeyCode.M) == true) {
			SetEmbarrassmentPortion(targetEmbarrassmentPortion - 0.1f);
		}
		*/
		if (topLeftMessage != null && Time.time > topLeftMessageExpireTime)  {
			topLeftMessage = null;
		}
		if (timeMessage != null && Time.time > timeMessageExpireTime)  {
			timeMessage = null;
		}
		if (IsMessageShowing()) {
			messageTimer += Time.deltaTime;
			if (messageTimer > messageDuration) {
				message = null;
			}
		} else if (messageQueue.Count > 0) {
			HUDMessage newMessage = messageQueue.Dequeue();
			
			ShowMessage(newMessage.message, newMessage.duration);
		}
		if (IsMeterShowing()) {
			meterShowTimer += Time.deltaTime;
			float timeRemaining = (MeterShowDuration - MeterFadeDuration) - meterShowTimer;
			float distance = targetEmbarrassmentPortion - displayedEmbarrassmentPortion;
			
			if (timeRemaining <= 0.0f) {
				displayedEmbarrassmentPortion = targetEmbarrassmentPortion;
				if (meterShowTimer >= MeterShowDuration) {
					meterShowTimer = -1.0f;
				}
			} else {
				displayedEmbarrassmentPortion += distance / timeRemaining * Time.deltaTime;
				displayedEmbarrassmentPortion = Mathf.Clamp(displayedEmbarrassmentPortion, 0.0f, 1.0f);
			}
		}
	}
	
	bool IsMessageShowing() {
		return message != null;
	}
	
	public void AddGameOverMessage(int x, int y, int w, int h, ref string mess, Color clr) {
		gameOverMessages.Add(new GameOverHUDMessage(mess, x, y, w, h, clr));
	}
	
	void OnGUI()
 	{	
		// Important to keep from skipping render events
		if (Event.current.type != EventType.Repaint)
			return;

		// Fade in screen
		if(AlphaFadeValue > 0.0f && FadeInTexture != null)
		{
  			AlphaFadeValue -= Mathf.Clamp01(Time.deltaTime / FadeInTime);
			if(AlphaFadeValue < 0.0f)
			{
				AlphaFadeValue = 0.0f;	
			}
			else
			{
				GUI.color = new Color(0, 0, 0, AlphaFadeValue);
  				GUI.DrawTexture( new Rect(0, 0, Screen.width, Screen.height ), FadeInTexture ); 
				return;
			}
		}
		

		
		// We can turn on the render object so we can render the on-screen menu
		if(GUIRenderObject != null)
		{
			GUIRenderObject.SetActive(true);
		}
		
		//***
		// Set the GUI matrix to deal with portrait mode
		Vector3 scale = Vector3.one;
		if(CameraController.PortraitMode == true)
		{
			float h = OVRDevice.HResolution;
			float v = OVRDevice.VResolution;
			scale.x = v / h; 					// calculate hor scale
    		scale.y = h / v; 					// calculate vert scale
		}
		Matrix4x4 svMat = GUI.matrix; // save current matrix
    	// substitute matrix - only scale is altered from standard
    	GUI.matrix = Matrix4x4.TRS(Vector3.zero, Quaternion.identity, scale);
		
		// Cache current active render texture
		RenderTexture previousActive = RenderTexture.active;
		
		// if set, we will render to this texture
		if(GUIRenderTexture != null)
		{
			RenderTexture.active = GUIRenderTexture;
			GL.Clear (false, true, new Color (0.0f, 0.0f, 0.0f, 0.0f));
		}
		
		// Update OVRGUI functions (will be deprecated eventually when 2D renderingc
		// is removed from GUI)
		GuiHelper.SetFontReplace(FontReplace);
		
		if (timeMessage != null) {
			GuiHelper.StereoBox (700, 140, 40, 23, ref timeMessage, Color.red);
		}
		if (gameOverMessages.Count > 0) {
			foreach (GameOverHUDMessage hudMess in gameOverMessages) {
				GuiHelper.StereoBox (hudMess.x, hudMess.y, hudMess.w, hudMess.h, ref hudMess.message, hudMess.clr);
			}
		} else {
			if (topLeftMessage != null) {
				GuiHelper.StereoBox (440, 140, 300, 40, ref topLeftMessage, Color.yellow);
			}
			if (IsMessageShowing()) {
				float alpha = 1.0f;
				
				if (messageTimer < MessageFadeDuration) {
					alpha = messageTimer / MessageFadeDuration;
				} else if (messageTimer > (messageDuration - MessageFadeDuration)) {
					alpha = (messageDuration - messageTimer) /  MessageFadeDuration;
					alpha = Mathf.Clamp(alpha, 0.0f, 1.0f);
				}
				GuiHelper.StereoBox (StartX, StartY, WidthX, WidthY, ref message, Color.yellow * alpha);
			}
			if (ObservedStatusTexture != null) {
				if (detectedByParkKeeperCount > 0) {
					GuiHelper.StereoDrawTexture(200, 4, 880, 660, ref ObservedStatusTexture, Color.red);
				} else if (detectedByCivilianCount > 0) {
					GuiHelper.StereoDrawTexture(200, 4, 880, 660, ref ObservedStatusTexture, Color.green);
				}
			}
			if (IsMeterShowing()) {
				float MaxWidth = 300.0f;
				float width = MaxWidth * displayedEmbarrassmentPortion;
				GuiHelper.StereoDrawTexture(490, 400, (int)width, 64, ref EmbarrassmentMeterTexture, Color.white * MeterAlpha());
				GuiHelper.StereoDrawTexture(490, 400, (int)MaxWidth, 64, ref EmbarrassmentMeterBorderTexture, Color.white * MeterAlpha());
			}
		}
		
		
		// Restore active render texture
		RenderTexture.active = previousActive;
		
		// ***
		// Restore previous GUI matrix
		GUI.matrix = svMat;
 	}
}