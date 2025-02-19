@Library('java_demo_pipeline@main') _
pipeline {
    agent {
        label 'slave2'
    }
    stages {
        stage('Checkout') {
            steps {
               checkoutcode('hello_world')
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
