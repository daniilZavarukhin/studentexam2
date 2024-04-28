pipeline {
    agent any

    stages {
        stage('Install paskages') {
            steps {
                echo 'get start'
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install -e .
                '''
            }
        }
    }
}
