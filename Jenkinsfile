pipeline {

  environment {
   
     registry = "10.128.0.12:5000/syedhajirali"     
     dockerImage = ""
  }

  agent any
    stages {
  
    stage('Checkout Source') {
      steps {
        git 'https://github.com/syedhajirali/studentmaster.git'
      }
    }

     

      
    stage('Build image') {
      steps{
        script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
 
    stage('Push Image') {
      steps{
        script {
          docker.withRegistry( "" ) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "student.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }
   stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }

}
