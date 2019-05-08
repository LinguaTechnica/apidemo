pipeline {

    agent {
        docker {
            image 'protosac/apidemo:latest'
            args '-u root'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'               
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'python3 tests.py'
            }
        }
    }
}
