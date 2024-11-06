pipeline {
    agent any
    
    environment {
        MAVEN_HOME = tool name: 'Maven 3.9.9', type: 'maven'
    }
    
    stages {
        stage('Build') {
            steps {
                // Checkout the code from GitHub
                git 'https://github.com/abxnxsh/model.git'
                
                // Build the Maven project
                script {
                    withMaven(maven: 'Maven 3.9.9') {
                        sh 'mvn clean package -Pproduction'
                    }
                }
            }
        }
        
        stage('Docker Build and Push') {
            steps {
                // Docker build and push commands
                script {
                    def image = docker.build("abizztu/my-app:${env.BUILD_ID}")
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
                        image.push()
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying to the specified environment...'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running automated tests...'
                sh 'mvn test -Pproduction'
            }
        }
    }
}
