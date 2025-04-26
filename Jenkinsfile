pipeline {
    agent any



    stages {
    

        stage('pull Docker Image') {
            steps {
                script {                
			sh "docker pull basavarajmallad/my-repo:2.0"
			
                }
            }
        }



        stage('Run Container') {
            steps {
                script {
                   sh "docker run -d  -p 8080:8080 basavarajmallad/my-repo:2.0"
                }
            }
        }
    }
}
