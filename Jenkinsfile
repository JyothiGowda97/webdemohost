pipeline {
    agent { label 'slave2' }
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
          stage('deploy') {             
            steps {
                sh "sudo cp target/*.war /opt/apache-tomcat-10.1.35/webapps/"              
            }
        }
    }
}
