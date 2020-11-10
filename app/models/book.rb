class Book < ApplicationRecord
  belongs_to :restaurant
  belongs_to :reservation
end
