//kjk
pipeline {
  agent any
  tools {
    gradle 'SampleGradle'
    jdk 'JDK1.8'
  }
  stages {
    stage('Build') {
      steps {
        sh "gradle build"
      }
    }
    stage('Run Docker Image') {
      steps {
        sh "docker image build -t tomcat-docker .
      }
    } 
    stage('Run the Container') {
      steps {
        sh "docker container run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock tomcat-docker"
      }
  }
}
