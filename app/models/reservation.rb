class Reservation < ApplicationRecord
	has_many :books, dependent: :destroy
	has_many :restaurants, through: :books
	validates :date, :time, :name, :number, presence: true
end
