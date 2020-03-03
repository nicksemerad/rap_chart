class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.string :name
      has_many :artists

      t.timestamps
    end
  end
end
