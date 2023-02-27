class ApplicationRecord < ActiveRecord::Base
  def encode_token(payload)
    JWT.encode(payload, 'secret')
end
