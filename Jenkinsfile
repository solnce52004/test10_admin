pipeline {
    agent any
    stages {
        stage('Git') {
            steps {
                git 'https://github.com/solnce52004/test10_admin.git'
            }
        }
        stage('Build') {
            steps {
                sh "./gradlew build"
            }
        }
        stage('Run') {
            steps {
                sh "java -jar ./build/libs/test10_admin-0.0.1-SNAPSHOT.jar"
            }
        }
    }
}