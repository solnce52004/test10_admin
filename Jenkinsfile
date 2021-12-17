pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/solnce52004/test10_admin.git'
                sh "./gradlew build"
                sh "java -jar ./build/libs/test10_admin-0.0.1-SNAPSHOT.jar"
            }
        }
    }
}