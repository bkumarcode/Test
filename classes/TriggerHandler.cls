/************************************************
* @author         	Author     
* @description    	This acts as a Trigger Handler.
* @date   			9/5/23*/
public with sharing class TriggerHandler implements TriggerInterface{
	/************************************************
	* @description    	by this variable we can block Trigger.*/
	public static Boolean BLOCK_TRIGGER=false;
	
	/************************************************
	* @description    	Constructor*/
	public OrchestrationItemTriggerHandler(){}
	
    /************************************************
	* @param           	List<SObject>
	* @description    	All Fast Field Updates / Validation of a Record can be done before Inserting a Record.
	* @return    		void */
    public void beforeInsert(List<SObject> newItems) {
		updateField(updateField);
	}

	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	All Fast Field Updates of a Record can be done before Updating a Record.
	* @return    		void */
    public void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
		updateField(newItems,oldItems);
	}
   
	/************************************************
	* @param           	Map<Id, SObject>
	* @description    	Any validation of a Record can be done before Deleting a Record.
	* @return    		void */
    public void beforeDelete(Map<Id, SObject> oldItems) {
		checkForOwner(oldItems);
	}
    
	/************************************************
	* @param           	Map<Id, SObject>
	* @description    	Any action can be done to Related Objects of the newly Inserted Objects.
	* @return    		void */
    public void afterInsert(Map<Id, SObject> newItems) {
		insertTask(newItems);
	}
    
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	Any action can be done to Related Objects of the newly Updated Objects.
	* @return    		void */
    public void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
		updateTask(newItems,oldItems);
	}
    
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	Any action can be done to Related Objects of the newly Deleted Objects.
	* @return    		void */
    public void afterDelete(Map<Id, SObject> oldItems) {}
	
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	Related to Un-Delete Trigger Action we can add methods here.
	* @return    		void */
    public void afterUndelete(Map<Id, SObject> oldItems) {}
}
