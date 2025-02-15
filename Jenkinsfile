pipeline {
    agent { label 'slave1' }
    stages {
        stage('Checkout') {             
            steps {
                git clone https://github.com/basavarajmallad/webdemohost.git
            }
        }
    }
}
