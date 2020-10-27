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
   stage('stop all containers') {
      steps {
      script {
       sh './stopDocker.sh'
      }}}
   stage('Build & run docker image') {
      steps {
      script {
       sh """ docker build -t demo ."""
       sh 'docker run -itd -p 80:8080 --name "demo"  demo'
      }}}
}}
