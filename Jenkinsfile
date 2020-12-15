pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            echo 'Building'
         }
      }
      stage('Test') {
         steps {
            echo 'Unit testing'
         }
      }
      stage('Deploy') {
         stage('Deploy start ') {
               steps {
                     sh "aws cloudformation create-stack --stack-name tempapigateway --template-body file://infrastructure/cloudformation/APIGateway/apigateway.yml --region 'us-east-1'"
               } 
         }
      }
   }
}