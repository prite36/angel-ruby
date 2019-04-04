json.extract! pitch, :id, :company_name, :description, :pitch_deck_url, :amount_raised, :published, :created_at, :updated_at
json.url pitch_url(pitch, format: :json)
