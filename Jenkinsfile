//@Library('java_demo_pipeline@main') _
pipeline {
    agent {
        label any
    }
    stages {
        stage('Checkout') {
            steps {
             //  checkoutcode('hello_world')
                sh "echo 'welocome'"
            }
        }
        
        stage('build') {
            steps {
               //sh "cd webdemohost"
              // sh "mvn clean package"
              //  buildproject('hello_World')
              sh "docker build -t hello-world:3.0 ."
            }
        }
        stage('publish') {
            steps {
               //sh "cd webdemohost"
               //sh "mvn clean deploy"
               // buildproject('hello_World')
              sh "docker tag hello-world:3.0 basavarajmallad/my-repo:5.0"
              sh "docker login -u basavarajmallad -p @4372GbasuM"
              sh "docker push basavarajmallad/my-repo:5.0"
            }
        }    
    }
}
