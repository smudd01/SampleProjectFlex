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
         steps {
               sh "aws cloudformation deploy --stack-name tempapigateway --template-body file://infrastructure/cloudformation/APIGateway/apigateway.yml --capabilities CAPABILITY_NAMED_IAM --region 'us-east-1'"
         } 
      }
   }
}