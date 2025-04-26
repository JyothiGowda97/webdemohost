pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = 'dockerhub-creds-id' // Replace with your Jenkins credentials ID
        DOCKERHUB_USERNAME = 'basavarajmallad'
        IMAGE_NAME = 'Helloword'
		VERSION_NAME ='1.0'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${VERSION_NAME}")
                }
            }
        }



        stage('Run Container') {
            steps {
                script {
                    sh "docker rm -f ${IMAGE_NAME} || true"
                    sh "docker run -d --name ${IMAGE_NAME} -p 8080:8080 ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${VERSION_NAME}"
                }
            }
        }
    }
}
