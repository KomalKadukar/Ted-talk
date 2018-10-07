class CreateTedtalks < ActiveRecord::Migration[5.2]
  def change
    create_table :tedtalks do |t|
      t.string :title
      t.string :description
      t.string :url
      t.integer :views
      t.references :speaker, foreign_key: true

      t.timestamps
    end
  end
end
