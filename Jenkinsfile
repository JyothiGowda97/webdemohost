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
        stage('publish') {
            steps {
               //sh "cd webdemohost"
               sh "mvn clean deploy"
               // buildproject('hello_World')
            }
        }

           stage('download') {
            steps {             
             curl -L -u "${JROGUSERNAME}:${JFROGTOKEN}" -O "https://trialkn4ife.jfrog.io/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/3.1.1/hello-world-war-3.1.1.war"

            }
        }
        
        
        stage('deploy') {
            steps {             
                //sh "cp target/*.war /opt/apache-tomcat-10.1.35/webapps/"
                sh "cp hello-world-war-3.1.1.war /opt/apache-tomcat-10.1.35/webapps/"
            }
        }
    }
}
