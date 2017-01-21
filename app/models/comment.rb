class Comment < ApplicationRecord
	belongs_to :restaurant

	validates :restaurant, presence: true
	validates :name, presence: true
	validates :content, presence: true, length: { in: 1..1000 }

end
