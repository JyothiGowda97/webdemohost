pipeline {
    agent any



    stages {
    

        stage('pull Docker Image') {
            steps {
                script {
                   // dockerImage = docker.build("${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${VERSION_NAME}")
		//	 sh "docker build -t helloworld:4.0 ."
			sh "docker pull basavarajmallad/my-repo:2.0"
			sh "echo 'pull mallad hi"
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
