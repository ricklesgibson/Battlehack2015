# # config/initializers/paperclip.rb - this is for gettin' fancy!
# Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
# Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'