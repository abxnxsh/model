pipeline {
    agent any

    stages {
        stage('Initialize') {
            steps {
                script {
                    echo 'Initializing pipeline...'
                }
            }
        }
        stage('Build') {
            git 'https://github.com/yourusername/my-app.git'
                
                // Build the Maven project
                script {
                    withMaven(maven: 'Maven 3.8.1') {
                        sh 'mvn clean package -Pproduction'
                    }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Pretending to test...'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Pretending to deploy...'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
    }
}

