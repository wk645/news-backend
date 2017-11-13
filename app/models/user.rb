class User < ApplicationRecord
	has_secure_password

	has_many :user_news
	has_many :news, through: :user_news

	validates :username, :email, uniqueness: true
end
