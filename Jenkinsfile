pipeline {
    agent {
        docker {
            image 'node:12'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('dist') {
            steps {
                sh 'npm run build'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'dist/*', fingerprint: true
        }
    }
}
