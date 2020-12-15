
pipeline{
    agent any

      stage('Deploy lambda triggers') {
         when { branch "master" }
         steps{
           sh 'python --version' 
         }
      }
   }
}