class Restaurant < ApplicationRecord
	has_many :books, dependent: :destroy
	has_many :reservations, through: :books
	validates :name, :city, :cuisine, presence: true
end
