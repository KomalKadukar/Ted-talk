class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :tag, foreign_key: true
      t.references :tedtalk, foreign_key: true

      t.timestamps
    end
  end
end
