
<cf_jsoup variable="mydoc" closure="$">
<p id="message">Your dog is barking</p>
</cf_jsoup>

<cfscript>
$('##message').addClass("alert");	
</cfscript>

<cfoutput>#mydoc#</cfoutput>


<style>
.alert {color: red;}	
</style>