pipeline {
    agent {
        label 'slave2'
    }
    stages {
        stage('Checkout') {
            steps {
               checkoutcode()
            }
        }
        stage('build') {
            steps {
               //sh "cd webdemohost"
              // sh "mvn clean package"
                buildproject()
            }
        }
        stage('deploy') {
            steps {             
                sh "cp target/*.war /opt/apache-tomcat-10.1.35/webapps/"
            }
        }
    }
}
