pipeline {

  environment {
   
     registry = "10.128.0.12:5000/syedhajirali/studentmaster"     
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
              echo 'Pushing to Local Registry'
             sh 'docker push registry + ":$BUILD_NUMBER"
              dockerImage.push()
              echo 'Pushing to Local Registry Success'
          }
        }
      }
    }

    stage('Deploy App') {
      steps {
        script {
           echo 'Kubernetes image from Local Registry'
          kubernetesDeploy(configs: "student.yaml", kubeconfigId: "mykubeconfig")
             echo 'Kubernetes image from Local Registry Success'
        }
      }
    }
   
  }

}
