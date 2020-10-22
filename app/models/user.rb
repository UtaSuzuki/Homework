class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, format: { with: /\A[a-zA-Z]\w*@\w+[.]\w+\z/}
    validates :password, # length: {minimum: 8, maximum: 32}, 
        format: { with: /\A[a-zA-Z](?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{7,31}\z/ }

    has_secure_password
end
