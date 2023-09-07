/************************************************
* @author         	Author     
* @description    	This acts as a Helper Class for Trigger Handler.
* @date   			9/5/23*/
public with sharing class TriggerHelper{
	
	/************************************************
	* @param           	List<SObject>
	* @description    	Update Status And Owner Field.
	* @return    		void */
    public void updateField(List<SObject> newItems){
	}
	
	/************************************************
	* @param           	Map<Id,SObject>,Map<Id,SObject>
	* @description    	Update Status And Owner Field.
	* @return    		void */
    public void updateField(Map<Id, SObject> newItems,Map<Id, SObject> oldItems){
	}
	
	/************************************************
	* @param           	Map<Id, SObject>
	* @description    	Delete When the Owner and User is Same.
	* @return    		void */
    public void checkForOwner(Map<Id, SObject> oldItems){
	}
	
	/************************************************
	* @param           	Map<Id, SObject>
	* @description    	Insert Task for Corresponding User.
	* @return    		void */
    public void insertTask(Map<Id, SObject> newItems){
	}
	
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	Update Task Status for Corresponding User.
	* @return    		void */
    public void updateTask(Map<Id, SObject> newItems,Map<Id, SObject> oldItems){
	}
	
}
