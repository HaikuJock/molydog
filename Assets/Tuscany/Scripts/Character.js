#pragma strict

var cameraTransform : Transform;
var FollowTarget : Transform;


function Update()
{
	//transform.rotation =  Quaternion.Slerp(transform.rotation, FollowTarget.rotation, Time.deltaTime * 10);
	transform.rotation = cameraTransform.rotation;//Controller.transform.rotation;
		
//	if(Controller.velocity.magnitude > 0.2)
//	{
//		animation.CrossFade("Walk", 0.2);
//	}
//	else
//	{
//		animation.CrossFade("Idle", 0.2);	
//	}
}