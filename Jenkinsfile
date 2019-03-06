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
  }
}
