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
               sh "aws cloudformation deploy --template-file infrastructure/cloudformation/APIGateway/apigateway.yml --stack-name tempapigateway --capabilities CAPABILITY_NAMED_IAM --region 'us-east-1'"
         } 
      }
   }
}