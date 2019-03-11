class Animal < ApplicationRecord
    validates :category, :description, :location, presence: true
end
