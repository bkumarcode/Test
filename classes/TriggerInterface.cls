/************************************************
* @author         	Author     
* @description    	This acts as a Interface for Trigger Handler Framework.
* @date   			9/5/23*/
public virtual class TriggerInterface{
	
    /************************************************
	* @param           	List<SObject>
	* @description    	Before Insert Implementation.
	* @return    		void */
    public void beforeInsert(List<SObject> newItems) {
		updateField(updateField);
	}

	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	Before Update Implementation.
	* @return    		void */
    public void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
		updateField(newItems,oldItems);
	}
   
	/************************************************
	* @param           	Map<Id, SObject>
	* @description    	Before Delete Implementation
	* @return    		void */
    public void beforeDelete(Map<Id, SObject> oldItems) {
		checkForOwner(oldItems);
	}
    
	/************************************************
	* @param           	Map<Id, SObject>
	* @description    	After Insert Implementation.
	* @return    		void */
    public void afterInsert(Map<Id, SObject> newItems) {
		insertTask(newItems);
	}
    
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	After Update Implementation.
	* @return    		void */
    public void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
		updateTask(newItems,oldItems);
	}
    
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	After Delete Implementation. 
	* @return    		void */
    public void afterDelete(Map<Id, SObject> oldItems) {}
	
	/************************************************
	* @param           	Map<Id, SObject>,Map<Id, SObject>
	* @description    	After Un Delete Implementation.
	* @return    		void */
    public void afterUndelete(Map<Id, SObject> oldItems) {}
}
