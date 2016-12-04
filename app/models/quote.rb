class Quote < ApplicationRecord
  # Direct associations

  belongs_to :mood

  # Indirect associations

  # Validations
 belongs_to :mood
end
