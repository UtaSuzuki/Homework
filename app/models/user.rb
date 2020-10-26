class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, format: { with: /\A[\w\-\.]+@[a-zA-Z\d\-]+\.[a-zA-Z]+\z/}
    validates :password, format: { with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,32}\z/ }

    has_secure_password
    
    has_many :topics
end
