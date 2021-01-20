class Record < ApplicationRecord
    validates :food, presence: true
    validates :date, presence: true
    validates :allergy, presence: true
    belongs_to :user
end
