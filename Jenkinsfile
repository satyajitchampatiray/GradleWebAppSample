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
        
      }
    }
    stage('Run the docker image') {
      steps {
      }
    }
  }
}
