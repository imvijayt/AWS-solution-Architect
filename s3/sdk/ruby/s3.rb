require 'aws-sdk-s3'  # AWS SDK for Ruby to interact with Amazon S3
require 'pry'         # Pry is a runtime developer console and IRB alternative
require 'securerandom' # SecureRandom library to generate random numbers and strings

# Retrieve the bucket name from the environment variable
bucket_name = ENV['BUCKET_NAME']
puts bucket_name  # Print the bucket name to the console

# Initialize a new S3 client
client = Aws::S3::Client.new

# Create a new S3 bucket
resp = client.create_bucket({
  bucket: bucket_name,  # Name of the bucket to create
  create_bucket_configuration: {
    location_constraint: "ap-south-1",  # Specify the region for the bucket
  }
})

# Generate a random number of files to create (between 1 and 6)
number_of_files = 1 + rand(6)
puts "number_of_files: #{number_of_files}"  # Print the number of files to be created

# Loop to create and upload the generated files to S3
number_of_files.times.each do |i|
  puts "i: #{i}"  # Print the current iteration index
  
  # Define the filename and the output path for the current file
  filename = "file_#{i}.txt"
  output_path = "/tmp/#{filename}"

  # Create a new file and write a random UUID to it
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid
  end

  # Open the file in binary mode and upload it to the S3 bucket with a unique key
  File.open(output_path, 'rb') do |f|
    client.put_object(bucket: bucket_name, key: filename, body: f)
  end
end
