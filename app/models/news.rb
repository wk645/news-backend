class News < ApplicationRecord

	has_many :user_news
	has_many :users, through: :user_news
end
