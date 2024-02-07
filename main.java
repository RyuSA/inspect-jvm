import java.lang.management.GarbageCollectorMXBean;
import java.lang.management.ManagementFactory;
import java.util.List;

public class main {

    public static void main(String[] args) {

        int MB = 1024*1024;
        long totalMemory_MB = Runtime.getRuntime().totalMemory()/MB;
        long maxMemory_MB = Runtime.getRuntime().maxMemory()/MB;
        long freeMemory_MB = Runtime.getRuntime().freeMemory()/MB;

        System.out.println("Runtime.availableProcessors: " + Runtime.getRuntime().availableProcessors());
        System.out.println("Runtime.totalMemory: " + totalMemory_MB + " MB");
        System.out.println("Runtime.maxMemory: " + maxMemory_MB + " MB");
        System.out.println("Runtime.freeMemory: " + freeMemory_MB + " MB");

        // Print only garbage collector which is running on the JVM
        List<GarbageCollectorMXBean> gcBeans = ManagementFactory.getGarbageCollectorMXBeans();
        for (GarbageCollectorMXBean gcBean : gcBeans) {
            System.out.println("GC name: " + gcBean.getName());
        }
    }
}