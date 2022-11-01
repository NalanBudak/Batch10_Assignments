trigger AssetTrigger on Asset (before insert, before update) {
    AssetHandler.AssetHandlerUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
}

/* DAY 17 Assignment

Create an Apex trigger for Asset object.
The trigger should work on before insert and before update

On both the cases it should call a handler class by passing trigger.new, 
trigger.old, trigger.newmap, trigger.oldmap   */