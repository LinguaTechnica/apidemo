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
                sh 'cd /var/www/qa.divethree.com'
                sh 'python3 -m venv env'
                sh '. env/bin/activate'
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
