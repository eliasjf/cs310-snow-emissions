OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '915826525167870', 'e9c29de7aef2db395db4144dc2be8eaa'
end