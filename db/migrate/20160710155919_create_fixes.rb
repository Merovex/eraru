class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.references :version, index: true
      t.references :book, index: true
      t.integer :milestone_id, index:true
      t.integer :contributor_id, index:true
      t.float :location
      t.string :title
      t.string :kind
      t.string :email
      t.string :name
      t.datetime :closed_at
      t.text :text

      t.timestamps
    end
  end
end
