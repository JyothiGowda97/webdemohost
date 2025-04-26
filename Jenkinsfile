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
                   // sh "docker rm -f ${IMAGE_NAME} || true"
                  //  sh "docker run -d --name ${IMAGE_NAME} -p 8080:8080 ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${VERSION_NAME}"
			sh "docker run -d  -p 8080:8080 basavarajmallad/my-repo:2.0"
                }
            }
        }
    }
}
