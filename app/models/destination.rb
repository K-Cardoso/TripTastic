class Destination < ApplicationRecord
    has_many :trips, dependent: :destroy
    
    validates :country, presence: true, length: { minimum: 1 }
    validates :city, presence: true, length: { minimum: 1 }
end