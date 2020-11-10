class Reservation < ApplicationRecord
	has_many :books, dependent: :destroy
	has_many :restaurants, through: :books
	validates :name, :date, :time, :number, presence: true
end
