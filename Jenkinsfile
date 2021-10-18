node {
    def app

    stage('Clone repository') {
      
        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("samuev/flask_app")
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'git') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
