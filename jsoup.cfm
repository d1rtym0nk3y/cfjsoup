<cfif thistag.executionmode is "start">
	<cfparam name="attributes.variable" />
	<cfparam name="attributes.closure" default="$" />
<cfelse>
	<cfscript>
	jsoup = createobject("java", 'org.jsoup.Jsoup', getDirectoryFromPath(getCurrentTemplatePath()) & '/lib/jsoup-1.7.2.jar');
	doc = jsoup.parse(thistag.generatedcontent);
	caller[attributes.variable] = doc;
	caller[attributes.closure] = function(string selector) {
		return doc.select(selector);
	};
	thistag.generatedcontent = '';
    </cfscript>
</cfif>