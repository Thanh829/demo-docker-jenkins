pipeline {
    agent any
 
   tools
    {
       maven "Maven 3.3.9"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: 'https://github.com/Thanh829/demo-docker-jenkins.git'
             
          }
        }
  stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
stage('Docker Build and Tag') {
           steps {
              
                sh 'sudo docker build -t demo-docker-jenkins:latest .' 
                sh 'sudo docker tag demo-docker-jenkins thanh829/demo-docker-jenkins:latest'
                //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
          withCredentials([usernamePassword(credentialsId: 'thanh829', passwordVariable: '123456789', usernameVariable: 'leethanh829@gmail.com')]){
          sh  'sudo docker push thanh829/demo-docker-jenkins:latest'
        //  sh  'docker push nikhilnidhi/samplewebapp:$BUILD_NUMBER' 
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
   {
                sh "sudo docker run -d -p 8003:8087 thanh829/demo-docker-jenkins"
 
            }
        }

    }
 }