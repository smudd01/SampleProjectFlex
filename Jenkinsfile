@Library('common-pipeline')
import corp.flex.sid.CommonTasks

pipeline{
    agent{

    }

    stages {
      stage('Setup') {
         steps {
            script {
               deleteDir()
               checkout scm
               commonTasks = new CommonTasks()
               commonTasks.setupRvm('SampleProjectFlex')
            }
         }
      }
      stage('Deploy lambda triggers') {
         when { branch "master" }
         steps{
            script{
               commonTasks.runRake('deploy:flex:api_gateway')
            }
         }
      }
   }
}