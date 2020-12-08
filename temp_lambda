import json

def lambda_handler(event, context):
    # TODO implement
    data = json.dumps(event)
    print("data to print",data)
    records = json.loads(data)
    print("records to print",event["queryStringParameters"]['Num'])

    cal_output = '543'
    if event["queryStringParameters"]['SResp'] == cal_output:
       return {"body": "Correct"}
    else:
       return {"body": "incorrect"}

        
