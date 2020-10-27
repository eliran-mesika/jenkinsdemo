pipeline {
 agent {  label 'master' }
stages {
   stage('Build jar using maven') {
      steps {
      script {
       sh """ ./mvnw clean install """
      }}}
    stage('Run maven tests') {
      steps {
      script {
       sh """ ./mvnw test """
       junit 'target/surefire-reports/*.xml'
      }}}
   stage('Build docker image') {
      steps {
      script {
       sh """ docker build -t demo ."""
      }}}
}}
