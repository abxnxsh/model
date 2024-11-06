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
            steps {
                script {
                    echo 'Pretending to build...'
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

