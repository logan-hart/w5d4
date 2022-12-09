class User < ApplicationRecord
    validates :username, :email, uniqueness: true, presence: true
end