class User < ApplicationRecord
  include ActiveModel::Serializers::JSON

  has_secure_password
  has_secure_token
  
  validates_format_of :name, with: /\A[^0-9`!@#\$%\^&*+_=]+\z/
  validates :user_name, uniqueness: true, presence: true

  def invalidate_token
    update(token: nil)
  end

  def self.valid_login?(user_name, password)
    user = find_by(user_name: user_name)
    user&.authenticate(password)
  end

  def attributes
    attrs = super
    attrs.except("password_digest")
  end 
end
