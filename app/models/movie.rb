class Movie < ApplicationRecord
    validates :summary, presence: true, length: { minimum: 5 }
end
