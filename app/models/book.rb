class Book < ApplicationRecord
	validates :title, presence: true,
	          length: { minimum: 0 }

	validates :body, presence: true, 
	          length: { minimum: 0, maximum: 200 }

    belongs_to :user
end
