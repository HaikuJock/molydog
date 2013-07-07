using UnityEngine;
using System.Collections;

public class NPCNavigationScript : MonoBehaviour {

	public enum NPCNavigationState
	{
		Stopped=0,
		Walk,
		TrackPlayer
	};
	
	public NPCNavigationState navigationState=NPCNavigationState.Walk;
	public NavMeshAgent agent;
	public Transform[] waypoints;
	public int currentWaypoint=0;
	
	public Transform player;
	
	public AudioClip angrySound;
	public float stateTransitionTime=2.0f;
	public float rotationSpeed=0.5f;
	
	void Start () {
		if (navigationState==NPCNavigationState.Walk){
			if (waypoints[currentWaypoint]!=null)
			{
				agent.destination=waypoints[currentWaypoint].position;
			}
		}
	}
	
	void Update () {
		switch(navigationState)
		{
			case NPCNavigationState.Stopped:
			case NPCNavigationState.TrackPlayer:
			{
				MoveToPlayer();
				break;	
			}	
			case NPCNavigationState.Walk:
			{	
				Walk();
				break;
			}
		}
	}
	
	void Stopped()
	{
	}
	
	void Walk()
	{
	 	float dist=agent.remainingDistance; 
	 	
	 	if (dist!=Mathf.Infinity && agent.pathStatus==NavMeshPathStatus.PathComplete && agent.remainingDistance==0)
	 	{
	 		Debug.Log("NPC - "+gameObject.name+" Waypoint "+currentWaypoint.ToString());
	 		MoveToNextWaypoint();
	 	}
	}
	
	void TrackPlayer()
	{
		
	}
	
	void MoveToNextWaypoint()
	{
		currentWaypoint++;
		if (currentWaypoint>waypoints.Length-1)
		{
			//reverse
			System.Array.Reverse(waypoints);
			currentWaypoint=0;
		}
		agent.destination=waypoints[currentWaypoint].position;
	}
	
	void MoveToPlayer()
	{
		//agent.destination=player.position;
		agent.enabled=false;
		
		//transform.LookAt(player.transform.position*Time.deltaTime*turnSpeed);
       Vector3 direction = (player.transform.position - transform.position).normalized;
       Quaternion lookRotation = Quaternion.LookRotation(direction);
       transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * rotationSpeed);		
		
		//transition back to walk state after a bit
		StartCoroutine("SwitchToWalk");
		
	}
	
	IEnumerator SwitchToWalk()
	{
		yield return new WaitForSeconds(stateTransitionTime);
		agent.enabled=true;
		SwitchNavState(NPCNavigationState.Walk);
	}
	
	public void SwitchNavState(NPCNavigationState newState)
	{
		
		if (newState==NPCNavigationState.TrackPlayer)
		{
			if (navigationState!=NPCNavigationState.TrackPlayer)
			{
				//TODO: Find why we can't access the dog script 
				DogScript dogScript=player.GetComponent<DogScript>();
				dogScript.currentObserverCount++;		
			}
			audio.Stop();
			MoveToPlayer();
			//audio.PlayOneShot(angrySound);
		}
		else if (newState==NPCNavigationState.Walk)
		{
			if (navigationState==NPCNavigationState.TrackPlayer)
			{
				DogScript dogScript=player.GetComponent<DogScript>();
				dogScript.currentObserverCount--;
				if (dogScript.currentObserverCount < 0) {
					dogScript.currentObserverCount = 0;
				}
			}
			audio.Stop();
		}
		navigationState=newState;
	}
}
