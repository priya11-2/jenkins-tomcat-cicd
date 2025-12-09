pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps { git 'https://github.com/YOUR_USERNAME/YOUR_REPO.git' }
    }
    stage('Build') {
      steps { sh 'mvn clean package' }
    }
    stage('Deploy to Tomcat') {
      steps {
        sshPublisher(publishers: [
          sshPublisherDesc(configName: 'tomcat-server',
            transfers: [
              sshTransfer(sourceFiles: 'target/simple-tomcat-app.war',
                          remoteDirectory: '/opt/tomcat/webapps')
            ])
        ])
      }
    }
  }
}