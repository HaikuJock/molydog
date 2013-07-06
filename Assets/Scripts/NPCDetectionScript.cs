using UnityEngine;
using System.Collections;

public class NPCDetectionScript : MonoBehaviour {
	
	public GameObject playerObject; // the player
	public float fieldOfViewRange=68.0f; //68 degrees for FOV
	public float minPlayerDetectDistance=0.2f; // the distance the player can come behind the enemy without being deteacted
	public float rayRange=10.0f; // distance the enemy can "see" in front of him
	private Vector3 rayDirection = Vector3.zero;

	public NPCNavigationScript navScript;

	void Update()
	{
		if (CanSeePlayer())
		{
			Debug.Log("See player");
			navScript.SwitchNavState(NPCNavigationScript.NPCNavigationState.TrackPlayer);
		}
		else
		{
			navScript.SwitchNavState(NPCNavigationScript.NPCNavigationState.Walk);
		}
	}
	
	bool CanSeePlayer()
	{
	    RaycastHit hit;
	    rayDirection = playerObject.transform.position - transform.position;
	    float distanceToPlayer = Vector3.Distance(transform.position, playerObject.transform.position);
	 
	    if(Physics.Raycast (transform.position, rayDirection, out hit)){ // If the player is very close behind the enemy and not in view the enemy will detect the player
	        if((hit.transform.tag == "Player") && (distanceToPlayer <= minPlayerDetectDistance)){
	            Debug.Log("Caught player sneaking up behind!");
	            return true;
	        }
	    }
	 
	 
	    if((Vector3.Angle(rayDirection, transform.forward)) < fieldOfViewRange){ // Detect if player is within the field of view
	        if (Physics.Raycast (transform.position, rayDirection, out hit, rayRange)) {
	 
	            if (hit.transform.tag == "Player") {
	                Debug.Log("Can see player");
	                return true;
	            }else{
	                Debug.Log("Can not see player");
	                return false;
	            }
	        }
	    }
	    
	    return false;
	}
 
 
	void OnDrawGizmosSelected ()
	{
    	// Draws a line in front of the player and one behind this is used to visually illustrate the detection ranges in front and behind the enemy
    	Gizmos.color = Color.magenta; // the color used to detect the player in front
    	Gizmos.DrawRay (transform.position, transform.forward * rayRange);
    	Gizmos.color = Color.yellow; // the color used to detect the player from behind
    	Gizmos.DrawRay (transform.position, transform.forward * -minPlayerDetectDistance);      
	}	

}
