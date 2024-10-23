class Machine < ApplicationRecord
    validates :identification, presence: true
    validates :weight, presence: true
    validates :size, presence: true
end
