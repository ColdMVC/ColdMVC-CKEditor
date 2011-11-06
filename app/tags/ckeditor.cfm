<cfif thisTag.executionMode eq "end">
	<cfset thisTag.generatedContent = coldmvc.factory.getBean("ckEditor").render(argumentCollection=attributes) />
</cfif>