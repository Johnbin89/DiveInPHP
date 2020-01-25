pipeline {
    agent { docker { image 'php:7-apache' } }
    stages {
        stage('build') {
            steps {
                sh '../deploy.sh'
            }
        }
    }
}