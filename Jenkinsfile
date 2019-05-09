pipeline {

    agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'pip install -r requirements.txt'
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
