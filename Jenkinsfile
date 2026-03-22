pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "joyalmjoy/mvc-lab3-jenkins:latest"
    }

    stages {
        stage('Build Maven Project') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    bat 'docker login -u %DOCKER_USER% -p %DOCKER_PASS%'
                }
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t %DOCKER_IMAGE% .'
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push %DOCKER_IMAGE%'
            }
        }
    }
}
