resource "aws_s3_bucket_object" "file_0" {
    bucket = "${aws_s3_bucket.static_site.bucket}"
    key = "bundle.js"
    source = "./dist/bundle.js"
    content_type = "application/javascript"
    etag = "${md5(file("./dist/bundle.js"))}"
  }
resource "aws_s3_bucket_object" "file_1" {
    bucket = "${aws_s3_bucket.static_site.bucket}"
    key = "error.html"
    source = "./dist/error.html"
    content_type = "text/html"
    etag = "${md5(file("./dist/error.html"))}"
  }
resource "aws_s3_bucket_object" "file_2" {
    bucket = "${aws_s3_bucket.static_site.bucket}"
    key = "index.html"
    source = "./dist/index.html"
    content_type = "text/html"
    etag = "${md5(file("./dist/index.html"))}"
  }