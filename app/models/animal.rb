class Animal < ApplicationRecord
    belongs_to :user
    has_many :comments 

    validates :category, :description, :location, presence: true

end
