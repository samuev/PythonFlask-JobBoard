node {
    def app

    stage('Clone repository') {
      
        checkout scm
    }

    stage('Build Docker Image') {
  
       app = docker.build("samuev/flask_app")
       //sh 'docker build -t samuev/flask_app:latest'
    }

      
    stage('Push Docker Image'){
        //withCredentials([string(credentialsId: 'DOKCER_HUB_PASSWORD', variable: 'DOKCER_HUB_PASSWORD')]) {
        withCredentials([usernamePassword(credentialsId: 'samuev', passwordVariable: 'DOKCER_HUB_PASSWORD', usernameVariable: 'DOKCER_HUB_USER')]) {   
            sh "docker login -u samuev -p ${DOKCER_HUB_PASSWORD}"
        }
         sh "docker push samuev/flask_app:latest"
     }
}
