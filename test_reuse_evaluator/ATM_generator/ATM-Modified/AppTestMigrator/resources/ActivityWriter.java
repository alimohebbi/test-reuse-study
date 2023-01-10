import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class ActivityWriter {
    private static void writeActivityName () {
        PrintWriter out = null;
        try {
            out = new PrintWriter(new FileWriter(Environment.getExternalStorageDirectory().getAbsolutePath() + "/activity_names", true));
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }

        final Activity[] currentActivity = new Activity[1];
        getInstrumentation().runOnMainSync(new Runnable() {
            public void run() {
                Collection<Activity> resumedActivities = ActivityLifecycleMonitorRegistry.getInstance().getActivitiesInStage(RESUMED);
                if (resumedActivities.iterator().hasNext()) {
                    currentActivity[0] = resumedActivities.iterator().next();
                }
            }
        });
        String activityName = "";
        Activity activityInstance = currentActivity[0];
        if (activityInstance != null) {
            activityName = activityInstance.getLocalClassName();
        }
        out.println(activityName);
        out.flush();
        out.close();
    }
}