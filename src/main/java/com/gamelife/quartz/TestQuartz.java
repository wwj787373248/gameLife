package com.gamelife.quartz;

import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

import java.util.Date;

import org.quartz.*;
import org.quartz.DateBuilder.IntervalUnit;
import org.quartz.impl.StdSchedulerFactory;

public class TestQuartz {
    public static void main(String[] args) throws Exception{
        Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();

        Date startTime = DateBuilder.nextGivenSecondDate(null, 8);

        JobDetail job = newJob(MailJob.class).withIdentity("mailJob", "mailGroup").build();

        CronTrigger trigger = newTrigger().withIdentity("trigger1", "group1").withSchedule(cronSchedule("0/2 * * * * ?"))
                .build();

        // schedule it to run!
        Date ft = scheduler.scheduleJob(job, trigger);

        System.out.println("使用的Cron表达式是："+trigger.getCronExpression());
//            System.out.printf("%s 这个任务会在 %s 准时开始运行，累计运行%d次，间隔时间是%d毫秒%n", job.getKey(), ft.toLocaleString(), trigger.getRepeatCount()+1, trigger.getRepeatInterval());

        scheduler.start();

        //等待200秒，让前面的任务都执行完了之后，再关闭调度器
        Thread.sleep(200000);
        scheduler.shutdown(true);
    }
}