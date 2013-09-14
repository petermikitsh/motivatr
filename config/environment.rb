# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Motivatr::Application.initialize!

AWS::S3::DEFAULT_HOST = 's3-us-west-2.amazonaws.com'