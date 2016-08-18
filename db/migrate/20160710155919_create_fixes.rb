class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.references :version, index: true
      t.references :book, index: true
      t.integer :location
      t.string :kind
      t.string :email
      t.string :name
      t.integer :fixed
      t.text :text

      t.timestamps
    end
  end
end
