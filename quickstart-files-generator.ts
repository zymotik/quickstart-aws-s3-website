import * as fs from 'fs';
import * as path from 'path';

// Settings variables
const sourceDirectory = './dist';
const destinationFilename = 'quickstart-files.tf';

// Program variables
let terraformFile: string;
const files = fs.readdirSync(`${__dirname}/${sourceDirectory}`);

terraformFile = files.map((filename: string, index: number) => `resource "aws_s3_bucket_object" "file_${index}" {
    bucket = "\${aws_s3_bucket.static_site.bucket}"
    key = "${filename}"
    source = "${sourceDirectory}/${filename}"
    content_type = "${getFileMimeType(filename)}"
    etag = "\${md5(file("${sourceDirectory}/${filename}"))}"
  }`).join("\n\r");

fs.writeFileSync(destinationFilename, 
                    terraformFile, { encoding: 'utf8' });

function getFileMimeType(filename: string): string {
    const fileExtension = path.extname(filename);
    switch (fileExtension) {
        case '.html':
        case '.htm':
            return "text/html";
        case '.css':
            return 'text/css';
        case '.js':
            return 'application/javascript'
        case '.map':
            return 'application/javascript';
        case '.json':
            return 'application/json';
    }
    return 'text/plain';
}