class Mood < ApplicationRecord
  # Direct associations

  has_one    :devotional_quote,
             :class_name => "Quote"

  # Indirect associations

  # Validations
  belongs_to :user
  has_many :quotes


end
