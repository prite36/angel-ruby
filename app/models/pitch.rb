class Pitch < ApplicationRecord
    # Validations
    validates :company_name, presence: true
    validates :description, presence: true, length: { in: 12..256 }
    validates :pitch_deck_url, presence: true, length: { in: 12..256 }
    validates :amount_raised, presence: true, length: { in: 2..12 }

    # Associations
    belongs_to :user

    # Associate visits with the model
    visitable :ahoy_visit
end
