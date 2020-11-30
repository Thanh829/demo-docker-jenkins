pipeline{
    agent {
        docker {
        image "maven:3.3.9-jdk-8"
        label "docker"
    }
    }
    
    stages{
        stage("Build"){
            steps{
                sh "mvn -version"
                sh " mvn clean install"
            }
        }
    }
    post{
        always{
            cleanWs()
        }
    }
}