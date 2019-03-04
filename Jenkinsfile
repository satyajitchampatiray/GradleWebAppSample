
pipeline {
  agent any
  tools {
    gradle 'SampleGradle'
    jdk 'java1.8.0'
  }
  stages {
    stage('Build') {
      steps {
        sh "gradle build"
      }
    } 
    stage('deploy') {
      steps {
        sh "cp web/build/libs/web.war /opt/tomcat8/apache-tomcat-8.5.37/webapps/"
      }
    }
  }
}
