/*
 * JBILLING CONFIDENTIAL
 * _____________________
 *
 * [2003] - [2012] Enterprise jBilling Software Ltd.
 * All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Enterprise jBilling Software.
 * The intellectual and technical concepts contained
 * herein are proprietary to Enterprise jBilling Software
 * and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden.
 */

includeTargets << grailsScript("Init")
includeTargets << new File("${basedir}/scripts/Liquibase.groovy")

target(upgradeDb: "Upgrades database to the latest version") {
    depends(parseArguments, initLiquibase)

    def db = getDatabaseParameters(argsMap)
    def version = getApplicationMinorVersion(argsMap)

    println "Upgrading database to version ${version}"
    println "${db.url} ${db.username}/${db.password ?: '[no password]'} (driver ${db.driver})"

    // changelog files to load
    def upgrade = "./descriptors/database/jbilling-upgrade-${version}.xml"

    // run the upgrade scripts
    // by default this will run the upgrade context
    // if the -test argument is given then the test data will be loaded
    switch(args) {
        case "-test":
            println "updating with context = test"
            updateDatabase(classpathref: "liquibase.classpath", driver: db.driver, url: db.url, username: db.username, password: db.password, dropFirst: false, changeLogFile: upgrade, contexts: 'test')
            break;

        case "-upgrade":
        default:
            println "updating with context = base"
            updateDatabase(classpathref: "liquibase.classpath", driver: db.driver, url: db.url, username: db.username, password: db.password, dropFirst: false, changeLogFile: upgrade, contexts: 'base')
    }
}

setDefaultTarget(upgradeDb)
