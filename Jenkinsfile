@Library('java_demo_pipeline@main') _
pipeline {
    agent {
        label any
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
              //  buildproject('hello_World')
              docker build -t hello-world:3.0 .
            }
        }
        stage('publish') {
            steps {
               //sh "cd webdemohost"
               //sh "mvn clean deploy"
               // buildproject('hello_World')
              docker tag hello-world:3.0 basavarajmallad/my-repo:5.0
              docker login -u basavarajmallad -p @4372GbasuM
              docker push basavarajmallad/my-repo:5.0
            }
        }    

}
