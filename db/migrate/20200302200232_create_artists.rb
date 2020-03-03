class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.boolean :group
      t.belongs_to :chart, null: false, foreign_key: true
      has_many :songs

      t.timestamps
    end
  end
end
