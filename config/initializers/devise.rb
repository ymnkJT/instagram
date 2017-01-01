Devise.setup do |config|
  config.secret_key = 'd056e0335f1267e18e41704b455b75fb93f7120cddc93ee2ab9875a2bc9df8b89a271c1509ea145579c9e6f3f30f0f49bfe7188f93d11e768fa0b98aa8b780a1'
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
