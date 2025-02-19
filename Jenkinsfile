pipeline {
    agent {
        label 'slave3'
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
                buildproject('hello_World')
            }
        }
        stage('deploy') {
            steps {             
                sh "cp target/*.war /opt/apache-tomcat-10.1.35/webapps/"
            }
        }
    }
}
