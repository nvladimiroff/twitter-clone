class User < ApplicationRecord
    before_save { self.username = username.downcase }
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
end
