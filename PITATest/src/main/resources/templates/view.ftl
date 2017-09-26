<#include "init.ftl">

<@liferay_ui["message"] key="PITATest.caption" />

<h3>${Request["GREETER_MESSAGE"]!""}</h3>

<@portlet["actionURL"]
	name="greet"
	varImpl="greetURL"
/>

<@aui["form"] action="${greetURL}" method="post" name="fm">

	<@aui["input"]
		name="name"
		type="text"
	/>

	<@aui["button-row"]>
		<@aui["button"]
			value="Greet"
			type="submit"
		/>
	</@>
</@>