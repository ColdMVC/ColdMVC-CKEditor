<cfif thisTag.executionMode eq "end">
	<cfset thisTag.generatedContent = coldmvc.factory.get("ckEditor").render(argumentCollection=attributes) />
</cfif>