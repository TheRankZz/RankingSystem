# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


Paperclip::Attachment.default_options[:url] = "/images/upload/:class/:id/:style/:filename"
