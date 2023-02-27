class ApplicationRecord < ActiveRecord::Base
  def encode_token(payLoad)
    JWT.encode(payLoad, 'secret')
end
