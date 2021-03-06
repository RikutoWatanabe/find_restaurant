class Restaurant < ApplicationRecord
	has_many :comments, dependent: :destroy


	validates :name,
	presence: {message: "店名を入力してください。"}

	validates :start_t,
	presence: {message: "開店時間を正しく入力してください。"},format: { with: /\A[0-9]+\z/ , message: "半角数字で入力してください"},numericality: {greater_than_or_equal_to: 0,less_than: 24}

	validates :end_t,
	presence: {message: "閉店時間を正しく入力してください。"},format: { with: /\A[0-9]+\z/ , message: "半角数字で入力してください"},numericality: {greater_than_or_equal_to: 1,less_than: 25}

end
