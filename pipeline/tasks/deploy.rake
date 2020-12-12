ENV['AWS_REGION'] = 'us-east-1'

desc 'Deploy API Gateway'
task :"deploy:flex:api_gateway" do

    stack_name = "#{aws_env}-flex-api-gateway".upcase
    params = {
        'Environment' => "#{aws_env}".upcase
    }
    @cfn.deploy_stack(stack_name, params, 'infrastructure/cloudformation/APIGateway/apigateway.yml')
end