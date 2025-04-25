//@Library('java_demo_pipeline@main') _
pipeline {
    agent any
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
              sh "docker build -t hello-world:4.0 ."
            }
        }
        stage('publish') {
            steps {
               //sh "cd webdemohost"
               //sh "mvn clean deploy"
               // buildproject('hello_World')
              sh "docker tag hello-world:4.0 basavarajmallad/my-repo:6.0"
              sh "docker login -u basavarajmallad -p @4372GbasuM"
              sh "docker push basavarajmallad/my-repo:5.0"
              sh "docker system prune -af"
            }
        }  

        stage('pullimage')
        {
            steps {
                sh "docker pull basavarajmallad/my-repo:6.0"
            }
        }
        stage('run')
        {
            steps {
                sh "docker run -d -p 8085:80 basavarajmallad/my-repo:6.0"
            }
        }
    }
}
