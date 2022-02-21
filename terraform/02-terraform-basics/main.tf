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

    count = 2
    name = "my_iam_user_${count.index}"

}