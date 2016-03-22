if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_dqes9NMwkpwsJifX5YZ0np6K',
    :secret_key => 'sk_test_ALfQRx7AORLV2Kxcz5xjiABm'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]