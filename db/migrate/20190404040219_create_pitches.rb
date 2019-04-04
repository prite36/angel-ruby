class CreatePitches < ActiveRecord::Migration[5.2]
  def change
    create_table :pitches do |t|
      t.string :company_name
      t.text :description
      t.string :pitch_deck_url
      t.integer :amount_raised
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
