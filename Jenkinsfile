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
    stage('Build Docker Image') {
      steps {
        sh "docker image build -t tomcat-docker ."
      }
    } 
    stage('Run the Container') {
      steps {
        sh "docker container run -d -p 9001:8082 -v /var/run/docker.sock:/var/run/docker.sock tomcat-docker"
      }
    }
  }
}
