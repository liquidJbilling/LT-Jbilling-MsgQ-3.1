import org.apache.log4j.*

// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if(System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text/plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]
// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// whether to install the java.util.logging bridge for sl4j. Disable for AppEngine!
grails.logging.jul.usebridge = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []

// set per-environment serverURL stem for creating absolute links
environments {
    production {
        grails.serverURL = "http://www.changeme.com"
    }
    development {
        grails.serverURL = "http://localhost:8080/${appName}"
    }
    test {
        grails.serverURL = "http://localhost:8080/${appName}"
    }

}

log4j = {
    
    appenders {
        console name:"CONSOLE", threshold:Level.INFO, layout:pattern(conversionPattern: "%d{ABSOLUTE} %-5p [%c{1}] %m%n")
        rollingFile name:"FILE", threshold:Level.INFO, datepattern: "'.'yyyy-MM-dd", maxFileSize:1048576,  file: "logs/server.log", layout:pattern(conversionPattern: "%d %-5r %-5p [%c] (%t:%x) %m%n"), append: false
        rollingFile name:"jbillingAppender", threshold:Level.DEBUG, datepattern: "'.'yyyy-MM-dd", maxFileSize:1048576,  file: "logs/jbilling.log", layout:pattern(conversionPattern: "%d %-5p [%c] %m%n"), append: false
        rollingFile name:"SQL-FILE", threshold:Level.DEBUG, datepattern: "'.'yyyy-MM-dd", maxFileSize:1048576,  file: "logs/sql.log", layout:pattern(conversionPattern: "%d %-5r %-5p [%c] (%t:%x) %m%n"), append: false
    }
    
    debug jbillingAppender:'com.sapienter.jbilling'
    
    info FILE:'com.mchange'
    
    root {
        info 'CONSOLE','FILE'
        additivity = true
    }
}

// Spring Security
grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.sapienter.jbilling.server.user.db.UserDTO'
grails.plugins.springsecurity.userLookup.usernamePropertyName = 'userName'
grails.plugins.springsecurity.authority.className = 'com.sapienter.jbilling.server.user.permisson.db.PermissionDTO'
grails.plugins.springsecurity.voterNames = ['authenticatedVoter', 'roleVoter', 'permissionVoter', 'webExpressionVoter']