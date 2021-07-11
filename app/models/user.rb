class User < ApplicationRecord
    validates :name, presence: true, length:{maximun:30}, uniqueness: true
    validates :email, prensence: true, length:{maximun 255}, uniqueness: true format:{ with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password, prensence: true, length:{maximun 6}
    before_validations {email.downcase! }
    has_secure_password
    has_secure_password :recovery_password, validations:true
end
