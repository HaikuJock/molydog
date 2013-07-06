#pragma strict

enum NPCNavigationState
{
	Stopped=0,
	Walk,
	TrackPlayer
};

var navigationState:NPCNavigationState;
var agent:NavMeshAgent;
var waypoints:Transform[];
var currentWaypoint=0;

var player:Transform;

function Start () {
	if (navigationState==NPCNavigationState.Walk){
		if (waypoints[currentWaypoint]!=null)
		{
			agent.destination=waypoints[currentWaypoint].position;
		}
	}
}

function Update () {
	switch(navigationState)
	{
		case NPCNavigationState.Stopped:
		case NPCNavigationState.TrackPlayer:
			break;	
		case NPCNavigationState.Walk:
			Walk();
			break;	
	}
}

function Walk()
{
 	var dist:float=agent.remainingDistance; 
 	
 	if (dist!=Mathf.Infinity && agent.pathStatus==NavMeshPathStatus.PathComplete && agent.remainingDistance==0)
 	{
 		Debug.Log("NPC - "+gameObject.name+" Waypoint "+currentWaypoint.ToString());
 		MoveToNextWaypoint();
 	}
}

function TrackPlayer()
{
}

function MoveToNextWaypoint()
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

function MoveToPlayer()
{
	agent.destination=player.position;
}

function SwitchNavState(newState:NPCNavigationState)
{
	navigationState=newState;
	if (newState==NPCNavigationState.TrackPlayer)
	{
		MoveToPlayer();
	}
}