<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="cahubTemplate"/>
        <g:set var="entityName" value="${message(code: 'healthHistory.label', default: 'Health History')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
         <script type="text/javascript" src="${resource(dir:'js/forms',file:'healthHistory.js')}?v<g:meta name='app.version'/>-${ts ?: ''}"></script> 
    </head>
    <body>
        <div id="nav" class="clearfix">
            <div id="navlist">
                <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
                  
                   
                       </div>
                       </div>
                       <div id="container" class="clearfix">
                       <h1><g:message code="default.create.label" args="[entityName]" /></h1>
                    <g:if test="${flash.message}">
                        <div class="message">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${healthHistoryInstance}">
                        <div class="errors">
                            <g:renderErrors bean="${healthHistoryInstance}" as="list" />
                        </div>
                    </g:hasErrors>


                    <g:form url="[resource:healthHistoryInstance, action:'save']" >
                             <g:hiddenField name="candidateRecord.id" value="${healthHistoryInstance?.candidateRecord?.id}" />
                        <div class="dialog">
                            <g:render template="form"/>
                        </div>
                        <div class="buttons">

                            <span class="button"><g:actionSubmit class="create" action="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                        </div>
                    </g:form>
            </div>
    </body>
</html>
