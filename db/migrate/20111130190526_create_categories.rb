class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, :force => true do |t|
      t.string :title, :unique => true
      t.timestamps
    end
  end
end