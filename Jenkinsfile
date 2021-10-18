node {
    //def app

    stage('Clone repository') {
      
        checkout scm
    }

    stage('Build Docker Image') {
  
       //app = docker.build("samuev/flask_app")
         sh 'docker build -t samuev/flask_app:latest'
    }

      
    stage('Push Docker Image'){
        //withCredentials([string(credentialsId: 'DOKCER_HUB_PASSWORD', variable: 'DOKCER_HUB_PASSWORD')]) {
//        withDockerRegistry(credentialsId: 'samuev', url: 'https://hub.docker.com/u/samuev') {    
            sh "docker login -u ${DOKCER_HUB_USER} -p ${DOKCER_HUB_PASSWORD}"
//        }
         sh "docker push ${DOKCER_HUB_USER}/flask_app:latest"
     }
}
