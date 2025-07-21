pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/clerikc/my-app1.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'docker build -t hello-world-go .'
            }
        }
        
        stage('Run') {
            steps {
                sh 'docker run --rm hello-world-go'
            }
        }
    }
}
