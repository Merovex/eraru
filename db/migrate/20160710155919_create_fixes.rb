class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.references :version, index: true
      t.references :book, index: true
      t.references :contributor, index: true
      t.string :type
      t.integer :fixed
      t.text :text

      t.timestamps
    end
  end
end
