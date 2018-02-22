Paperclip::DataUriAdapter.register
if Rails.env != 'test'
  s3_options = { storage: :s3,
                 # s3_permissions: :private,
                 s3_region: 'us-west-2',
                 s3_credentials: {
                   bucket: 'tjbot-otto',
                   access_key_id: ENV['AWS_ACCESS_KEY_ID'],
                   secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
                 }
  }
  Paperclip::Attachment.default_options.merge! s3_options
end
