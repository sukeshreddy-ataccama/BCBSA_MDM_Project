<?xml version='1.0' encoding='UTF-8'?>
<scheduleDefinition>
	<description>Process all Connected Systems</description>
	<enabled>false</enabled>
	<job class="com.ataccama.adt.scheduler.job.WorkflowJob" workflow="WF1:full_load.ewf">
		<variables/>
	</job>
	<scheduling>0 21 6 *</scheduling>
</scheduleDefinition>