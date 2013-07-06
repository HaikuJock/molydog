#pragma strict

var playerObject : GameObject; // the player
var fieldOfViewRange : float=68.0f; //68 degrees for FOV
var minPlayerDetectDistance : float=0.2f; // the distance the player can come behind the enemy without being deteacted
var rayRange : float=10.0f; // distance the enemy can "see" in front of him
private var rayDirection = Vector3.zero;

var navScript:NPCNavigationScript;

function Update()
{
	if (CanSeePlayer())
	{
		Debug.Log("See player");
		navScript.SwitchNavState(NPCNavigationState.TrackPlayer);
	}
	else
	{
		navScript.SwitchNavState(NPCNavigationState.Walk);
	}
}

function CanSeePlayer() : boolean
{
    var hit : RaycastHit;
    rayDirection = playerObject.transform.position - transform.position;
    var distanceToPlayer = Vector3.Distance(transform.position, playerObject.transform.position);
 
    if(Physics.Raycast (transform.position, rayDirection, hit)){ // If the player is very close behind the enemy and not in view the enemy will detect the player
        if((hit.transform.tag == "Player") && (distanceToPlayer <= minPlayerDetectDistance)){
            Debug.Log("Caught player sneaking up behind!");
            return true;
        }
    }
 
 
    if((Vector3.Angle(rayDirection, transform.forward)) < fieldOfViewRange){ // Detect if player is within the field of view
        if (Physics.Raycast (transform.position, rayDirection, hit, rayRange)) {
 
            if (hit.transform.tag == "Player") {
                Debug.Log("Can see player");
                return true;
            }else{
                Debug.Log("Can not see player");
                return false;
            }
        }
    }
}
 
 
function OnDrawGizmosSelected ()
{
    // Draws a line in front of the player and one behind this is used to visually illustrate the detection ranges in front and behind the enemy
    Gizmos.color = Color.magenta; // the color used to detect the player in front
    Gizmos.DrawRay (transform.position, transform.forward * rayRange);
    Gizmos.color = Color.yellow; // the color used to detect the player from behind
    Gizmos.DrawRay (transform.position, transform.forward * -minPlayerDetectDistance);      
}