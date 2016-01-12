<%@ page import="nci.bbrb.cdr.forms.SocialHistory" %>
<!DOCTYPE html>
<html>
	 <head>
        <meta name="layout" content="cahubTemplate"/>
        <g:set var="entityName" value="${message(code: 'socialHistory.label', default: ' Social History')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
         <script type="text/javascript" src="${resource(dir:'js/forms',file:'socialHistory.js')}?v<g:meta name='app.version'/>-${ts ?: ''}"></script> 
    </head>
	<body>
		<div id="nav" class="clearfix">
            <div id="navlist">
                <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
                  
                       </div>
                       </div>

		 <div id="container" class="clearfix">
			<h1>Edit Social History for Candidate ${socialHistoryInstance?.candidateRecord?.candidateId}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			 <g:hasErrors bean="${socialHistoryInstance}">
                        <div class="errors">
                            <g:renderErrors bean="${socialHistoryInstance}" as="list" />
                        </div>
                    </g:hasErrors>
			<g:form url="[resource:socialHistoryInstance, action:'update']" method="POST" >
				<g:hiddenField name="version" value="${socialHistoryInstance?.version}" />
                                <input type="hidden" name="changed" value="N" id="changed"/>
				<fieldset class="form">
                                   <g:render template="/candidateRecord/candidateDetails" bean="${socialHistoryInstance.candidateRecord}" var="candidateRecord"/>
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				<g:if test="${canSubmit}">
                        <g:actionSubmit class="save" action="submit" value="${message(code: 'default.button.submit.label', default: 'Submit')}" onclick="return sub()"/></span>
                    </g:if>
                                
                                </fieldset>
			</g:form>
		</div>
	</body>
</html>
