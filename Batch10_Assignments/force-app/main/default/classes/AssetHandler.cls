public  class AssetHandler {
   public static void AssetHandlerUpdate(List<Asset> newAsset, List<Asset> oldAsset, 
                                        Map<Id, Asset> assetNewMap, Map<Id,Asset> assetOldMap) {
         for (Asset eachAsset : newAsset) {
             if (eachAsset.Status == 'Shipped') { // eger status sipped ise asagidaki ini yazdir
                 eachAsset.Description = 'Asset is shipped';                 
             }
             if (eachAsset.Status == 'Installed') { // eger status installed ise description asagidakini yazdir
                 eachAsset.Description = 'Asset is installed';                 
             }

             if (oldAsset != null && eachAsset.Status == assetOldMap.get(eachAsset.Id).Status) {
                 eachAsset.Description = assetOldMap.get(eachAsset.Id).Description;
                 
             }            
         }                                          
  
      }                                         
 }
/* DAY 17 Assignment
Create an apex Assethandler class
---Create a static method Assethandlerupdate which returns nothing and 
accepts 
LIST<ASSET>, LIST<ASSET>, MAP<ID,ASSET>, MAP<ID,ASSET>

---If status of the field while inserting or updating is equal to Shipped then the 
Description should be ‘Asset is shipped’

---If status of the field while inserting or updating is equal to Installed then the 
Description should be ‘Asset is Installed

---By any chance if we try to just update without modifying the status field it 
should not change the description

*/
