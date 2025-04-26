pipeline {
    agent any
    stages {
        stage('pull') {
            steps {
              sh "docker pull jyothi3497/helloworld:1.0"
            }
        }
        stage('run') {
            steps {
              sh "docker run -d --name hello-world1 -p 8090:8080 jyothi3497/helloworld:1.0"
            }
        }
    }
}
