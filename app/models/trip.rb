class Trip < ApplicationRecord
    belongs_to :destination
    
    validates :depart_date, presence: true
    validates :return_date, presence: true
    validates :depart_time, presence: true
    validates :return_time, presence: true
    validates :mode, presence: true
end