public class SchedulableCls implements Schedulable{
    public void execute(SchedulableContext sc) {
    closedWonOpportunities opp = new closedWonOpportunities();
    Database.executeBatch(opp);
    }
}