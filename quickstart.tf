
variable "region" {
  default = "eu-west-1"
}
variable "bucket" {
  default = "quickstart-aws-s3-website"
}

provider "aws" {
#  access_key = ""
#  secret_key = ""
  region     = "${var.region}"
}

resource "aws_s3_bucket" "static_site" {
  bucket = "${var.bucket}"
  acl = "public-read"
  policy = "${data.template_file.s3_public_policy.rendered}"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

data "template_file" "s3_public_policy" {
  template = "${file("quickstart-bucket-policy.json")}"
  vars {
    bucket_name = "${var.bucket}"
  }
}

output "url" {
  value = "${aws_s3_bucket.static_site.bucket}.s3-website-${var.region}.amazonaws.com"
}
