import json
from faker import Faker 

def handler(event, context):
    fake = Faker()
    message = 'Hello {}!'.format(fake.name())
    info={
        "Type": "Container Package",
        "Version": 2,
    }
    info_json = json.dumps(info)
    print(info_json)    
    return {
        'message':message
    }