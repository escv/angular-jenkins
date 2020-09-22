pipeline {

    environment {
        CI = 'true'
        HOME = '.'
    }
    stages {

        stage('Build') {
            agent {
                docker {
                    image 'node:12'
                    args '-p 3000:3000'
                }
            }
            steps {
                sh 'npm install && npm run build'
            }
        }
        //stage('dist') {
        //    steps {
        //        sh 'npm run build'
        //    }
        //}
        // stage('docker') {
        //    agent any
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
