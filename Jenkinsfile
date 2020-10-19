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
        //stage('docker') {
        //    agent {
        //        label 'master'
        //    }
        //    steps {
        //        sh 'docker build . -t angular-jenkins:latest'
        //        sh 'docker run -d -p 80:80 angular-jenkins:latest'
        //    }
        //}
    }
    post {
        always {
            archiveArtifacts artifacts: 'dist/angular-jenkins/*', fingerprint: true
        }
    }
}
