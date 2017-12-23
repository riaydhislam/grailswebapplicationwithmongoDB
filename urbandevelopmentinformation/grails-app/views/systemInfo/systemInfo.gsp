<head>
    <meta name="layout" content="main"/>
    <title>Database Table Info</title>
</head>

<h2>Application Status</h2>

   <table border="0">
   <tr>
   <td>App version:</td>
   <td><g:meta name="app.version"/></td>
   <td>Grails version:</td>
   <td><g:meta name="app.grails.version"/></td>
   <td>Groovy version:</td>
   <td>${GroovySystem.getVersion()}</td>
   </tr>
   
   <tr>
   <td>JVM version:</td>
   <td> ${System.getProperty('java.version')}</td>
   <td>Reloading active:</td>
   <td> ${grails.util.Environment.reloadingAgentEnabled}</td>
   <td>Controllers:</td>
   <td> ${grailsApplication.controllerClasses.size()}</td>
   </tr>
   <tr>
   <td>Domains Class:</td>
   <td> ${grailsApplication.domainClasses.size()}</td>
   <td>Services:</td>
   <td>  ${grailsApplication.serviceClasses.size()}</td>
   <td>Tag Libraries:</td>
   <td> ${grailsApplication.tagLibClasses.size()}</td>
   </tr>
   </table>
  
            <h2>Installed Plugins</h2>
   <table>
   <tr>
   <td>
   
    <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
     <li>${plugin.name} : ${plugin.version}</li>
    </g:each>
   </td>
   </tr>
   
   <div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
		
   </table>
   
  