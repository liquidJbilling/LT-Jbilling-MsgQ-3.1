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

def home = System.getenv("JBILLING_HOME") ?: System.getProperty("JBILLING_HOME")
if (home) {
    grails.config.locations = [
            "file:${home}/${appName}.properties",
            "file:${home}/${appName}-Config.groovy",
            "file:${home}/${appName}-DataSource.groovy",
    ]
}

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
// use the jQuery javascript library
grails.views.javascript.library="jquery"
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

/*
    Spring Security
 */
// require authentication on all URL's
grails.plugins.springsecurity.rejectIfNoRule = false

// failure url
grails.plugins.springsecurity.failureHandler.defaultFailureUrl = '/login/authfail?login_error=1'

// remember me cookies
grails.plugins.springsecurity.rememberMe.cookieName = "jbilling_remember_me"
grails.plugins.springsecurity.rememberMe.key = "xANgU6Y7lJVhI"

// static security rules 
grails.plugins.springsecurity.controllerAnnotations.staticRules = [
        '/services/**': ['IS_AUTHENTICATED_FULLY','WEB_SERVICES_120'],
        '/hessian/**': ['IS_AUTHENTICATED_FULLY','WEB_SERVICES_120'],
        '/httpinvoker/**': ['IS_AUTHENTICATED_FULLY','WEB_SERVICES_120']
]

// IP address restrictions to limit access to known systems (always use with web-services in production environments!)
/*
grails.plugins.springsecurity.ipRestrictions = [
        '/services/**': ['192.168.0.110'],
        '/hessian/**': ['192.168.0.110','192.168.0.111'],
        '/httpinvoker/**': ['192.168.0.0/24']
]
*/

// basic HTTP authentication filter for web-services
grails.plugins.springsecurity.useBasicAuth = true
grails.plugins.springsecurity.basic.realmName = "jBilling Web Services"

// authentication filter configuration
grails.plugins.springsecurity.filterChain.chainMap = [
        '/services/**': 'JOINED_FILTERS,-exceptionTranslationFilter',
        '/hessian/**': 'JOINED_FILTERS,-exceptionTranslationFilter',
        '/httpinvoker/**': 'securityContextPersistenceFilter,staticAuthenticationProcessingFilter,securityContextHolderAwareRequestFilter,basicExceptionTranslationFilter,filterInvocationInterceptor',
        '/**': 'JOINED_FILTERS,-basicAuthenticationFilter,-basicExceptionTranslationFilter'
]

// voter configuration
grails.plugins.springsecurity.voterNames = ['authenticatedVoter', 'roleVoter', 'permissionVoter', 'webExpressionVoter']

