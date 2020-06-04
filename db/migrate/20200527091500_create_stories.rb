class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :first
      t.text :second
      t.text :third
      t.text :last

      t.timestamps
    end
  end
end
