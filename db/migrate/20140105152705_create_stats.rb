class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :type
      t.integer :quantity
      t.references :user, index: true

      t.timestamps
    end
  end
end
