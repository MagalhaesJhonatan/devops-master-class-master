terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

# plan - execute
resource "aws_s3_bucket" "my_s3_bucket" {

    bucket = "my-s3-bucket-1asdasdas" //needs to be unique
    versioning {
       enabled = true
    }

}

resource "aws_iam_user" "my_iam_user" { //create IAM user on AWS
    name = "my_iam_user_abc"
}

output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}

output "my_s3_bucket_complete_details" {
    value = aws_s3_bucket.my_s3_bucket
}
