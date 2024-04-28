pipeline {
    agent any

    stages {
        stage('Install paskages') {
            steps {
                echo 'get start get start get start'
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install -e .
                '''
		echo "get start get start get start"
            }
        }
	stage('Do test') {
            steps {
                echo '-------------------- test test test ------------------'
                sh '''
		. venv/bin/activate
                pip install -e '.[test]'
		coverage run -m pytest
		coverage report
                '''
		echo '------------------------- sex sex -------------------------'
            }
        }
	stage('Docker build') {
            steps {
                echo '-------------------- build build build ------------------'
                sh '''
                docker build -t daniilzav/epamexam:web .
		'''
                echo '----------------------------- sex sex sex ---------------------------'
            }
        }
	stage('Docker push') {
            steps {
                echo '-------------------- push push push ------------------'
		withCredentials([string(credentialsId: 'dockerTOK', variable: 'dockerTOK')]) {
		sh '''
		docker login -u daniilzav -p ${dockerTOK}
                docker push daniilzav/epamexam:web
                '''
		}                
                echo '----------------------------- sex sex sex sex ---------------------------'
            }
        }
    }
}
