using UnityEngine;
using System.Collections;

public class KeepNoseUnderCamera : MonoBehaviour {
	public OVRCameraController cameraController;
	
	// Use this for initialization
	void Start () {
	
	}
	static float downmuch = 0.63f;
	static float leftmuch = 0.0f;
	static float backmuch = 0.295f;
	// Update is called once per frame
	void Update () {
		// Still a bit juddery, but it stays in the right place
		Quaternion quat = Quaternion.Slerp(cameraController.CameraRight.transform.rotation, cameraController.CameraLeft.transform.rotation, 0.5f);
		Vector3 pos = Vector3.Lerp(cameraController.CameraRight.transform.position, cameraController.CameraLeft.transform.position, 0.5f);
		Vector3 down = -cameraController.CameraRight.transform.up;
		Vector3 left = -cameraController.CameraLeft.transform.right;
		Vector3 back = -cameraController.CameraLeft.transform.forward;
		transform.rotation = quat;
		transform.position = pos + down * downmuch + left * leftmuch + back * backmuch;
	}
}
