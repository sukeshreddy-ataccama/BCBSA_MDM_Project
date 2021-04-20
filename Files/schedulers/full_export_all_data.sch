<?xml version='1.0' encoding='UTF-8'?>
<scheduleDefinition>
	<description>Provide batch export instance data</description>
	<enabled>false</enabled>
	<job class="com.ataccama.adt.scheduler.job.WorkflowJob" workflow="WF1:export_all_instance.ewf">
		<variables/>
	</job>
	<scheduling>0 3 1-5 *</scheduling>
</scheduleDefinition>