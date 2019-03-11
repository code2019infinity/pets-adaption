class Animal < ApplicationRecord
    belongs_to :user
    has_many :comments 

    validates :category, :description, :location, :title,presence: true

    mount_uploader :image, ImageUploader
    validates_processing_of :image
end
