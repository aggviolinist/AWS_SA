import json

def handler(event, context):
    message = 'Hello {} {}!'.format(event['first_name'],event['last_name'])
    info={
        "Type": "Zip Inline",
        "Version": 1,
    }
    info_json= json.dumps(x)
    print(info_json)    
    return {
            'message':message
    }