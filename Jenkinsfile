pipeline {
    agent { label 'slave2' }
      parameters {
        string(name: 'command1', description: 'give build the command')
        choice(choices: ['package', 'compile', 'install'],  name: 'command2')
    }
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
                sh "mvn $command1 $command2"
                  }
        }
          stage('deploy') {             
            steps {
                sh "scp target/*.war root@172.31.29.214:/opt/apache-tomcat-10.1.35/webapps/"              
            }
        }
    }
}
