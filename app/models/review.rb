class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :book
end
