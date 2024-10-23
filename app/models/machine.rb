class Machine < ApplicationRecord
    has_many :machines_rapports
    validates :identification, presence: true
    validates :model, presence: true
    validates :weight, presence: true
    validates :size, presence: true
end
