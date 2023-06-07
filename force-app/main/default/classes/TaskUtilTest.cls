@isTest
public class TaskUtilTest {
    @isTest
public static void testGetTask() {
        String leadState = 'CA';
        String expectedPriority = 'High';
        String actualPriority = TaskUtil.getTaskPriority(leadState);
        System.assertEquals(expectedPriority, actualPriority);
    }

}