class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :parentname
      t.integer :age
      t.string :parentcompany
      t.string :emailaddr
      t.string :phone
      t.string :status
      t.string :remarks

      t.timestamps
    end
  end
end
