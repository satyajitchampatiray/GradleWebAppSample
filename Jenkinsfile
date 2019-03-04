
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
  }
}
