class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :image
      t.float :cant

      t.timestamps
    end
  end
end
