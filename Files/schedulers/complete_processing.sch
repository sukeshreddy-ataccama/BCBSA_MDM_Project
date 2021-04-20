<?xml version='1.0' encoding='UTF-8'?>
<scheduleDefinition>
	<description>Process all Connected Systems and create batch exports</description>
	<enabled>false</enabled>
	<job class="com.ataccama.adt.scheduler.job.WorkflowJob" workflow="WF1:complete_processing.ewf">
		<variables/>
	</job>
	<scheduling>0,5,10,15,20,25,30,35,40,45,50,55 8-20 1-5 *</scheduling>
</scheduleDefinition>