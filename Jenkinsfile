//kjk
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
        sh "sudo cp web/build/libs/web.war /opt/tomcat8/apache-tomcat-8.5.37/webapps/"
      }
    }
    stage('Upload to JFrog') {
      steps {
        sh 'curl -X PUT -u admin:AP8UM6UyW1i4xpPQceU7t8dyT6Y -T web/build/libs/web.war "http://52.42.249.222:8081/artifactory/example-repo-local/web.war"'
      }
    }
  }
}
