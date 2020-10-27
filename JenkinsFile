pipeline {
 agent {  label 'master' }
stages {
   stage('Build jar using maven') {
      steps {
      script {
       sh """ ./mvn clean install """
      }}}
   stage('Build docker image') {
      steps {
      script {
       sh """ docker build -t demo ."""
      }}}
}}
