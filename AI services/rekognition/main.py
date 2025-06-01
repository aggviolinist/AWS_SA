# #Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# #PDX-License-Identifier: MIT-0 (For details, see https://github.com/awsdocs/amazon-rekognition-developer-guide/blob/master/LICENSE-SAMPLECODE.)
import boto3

bucket = 'bucko'  # Your S3 bucket name
photo = 'nip.jpg'  # The key (filename) in your S3 bucket

def recognize_celebrities(bucket, photo):
    session = boto3.Session()
    client = session.client('rekognition')

    # Use S3Object instead of Bytes
    response = client.recognize_celebrities(
        Image={
            'S3Object': {
                'Bucket': bucket,
                'Name': photo
            }
        }
    )

    print('Detected faces for ' + photo)
    for celebrity in response['CelebrityFaces']:
        print('Name: ' + celebrity['Name'])
        print('Id: ' + celebrity['Id'])
        print('KnownGender: ' + celebrity['KnownGender']['Type'])
        print('Smile: ' + str(celebrity['Face']['Smile']['Value']))
        print('Position:')
        print('   Height: ' + '{:.2f}'.format(celebrity['Face']['BoundingBox']['Height']))
        print('   Top: ' + '{:.2f}'.format(celebrity['Face']['BoundingBox']['Top']))
        print('Info')
        for url in celebrity['Urls']:
            print('   ' + url)
        print()

    return len(response['CelebrityFaces'])

def main():
    celeb_count = recognize_celebrities(bucket, photo)
    print("Celebrities detected: " + str(celeb_count))

if __name__ == "__main__":
    main()

# import boto3
# bucket = 'bucko' # the bucket name without s3://
# def recognize_celebrities(photo):
    
#     session = boto3.Session()
#     client = session.client('rekognition')

#     with open(photo, 'rb') as image:
#         response = client.recognize_celebrities(Image={'Bytes': image.read()})

#     print('Detected faces for ' + photo)
#     for celebrity in response['CelebrityFaces']:
#         print('Name: ' + celebrity['Name'])
#         print('Id: ' + celebrity['Id'])
#         print('KnownGender: ' + celebrity['KnownGender']['Type'])
#         print('Smile: ' + str(celebrity['Face']['Smile']['Value']))
#         print('Position:')
#         print('   Left: ' + '{:.2f}'.format(celebrity['Face']['BoundingBox']['Height']))
#         print('   Top: ' + '{:.2f}'.format(celebrity['Face']['BoundingBox']['Top']))
#         print('Info')
#         for url in celebrity['Urls']:
#             print('   ' + url)
#         print()
#     return len(response['CelebrityFaces'])

# def main():
#     photo = 'myimage.jpg'
#     celeb_count = recognize_celebrities(photo)
#     print("Celebrities detected: " + str(celeb_count))

# if __name__ == "__main__":
#     main()