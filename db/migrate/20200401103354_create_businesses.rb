class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :info
      t.string :email
      t.string :url
      t.string :snapcode
      t.string :category
      t.string :address
      t.boolean :approved

      t.timestamps
    end
  end
end
