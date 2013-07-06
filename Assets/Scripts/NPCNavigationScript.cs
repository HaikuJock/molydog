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
		agent.destination=player.position;
	}
	
	public void SwitchNavState(NPCNavigationState newState)
	{
		
		if (newState==NPCNavigationState.TrackPlayer)
		{
			if (navigationState!=NPCNavigationState.TrackPlayer)
			{
				DogScript dogScript=player.GetComponent<DogScript>();
				dogScript.currentObserverCount++;		
			}
			audio.Stop();
			MoveToPlayer();
			audio.PlayOneShot(angrySound);
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
