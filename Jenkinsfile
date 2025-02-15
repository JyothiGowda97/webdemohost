pipeline {
    agent { label 'slave1' }
    stages {
        stage('Checkout') {             
            steps {
                sh "rm -rf webdemohost"
                sh "git clone https://github.com/basavarajmallad/webdemohost.git"
            }
        }
           stage('build') {             
            steps {
                sh "cd webdemohost"
                sh "mvn clean package"
                  }
        }
    }
}
