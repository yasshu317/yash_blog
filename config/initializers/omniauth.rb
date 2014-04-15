OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '626748084079789', '52e485e6789127d8f25d092d39ce65c9', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end