class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :size
      t.string :fabric
      t.integer :price
      t.string :type
    end
  end
end
