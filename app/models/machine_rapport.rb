class MachineRapport < ApplicationRecord
  belongs_to :machine
  belongs_to :user
end
