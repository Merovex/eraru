class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.references :book, index: true
      t.string :name
      t.date :released_on

      t.timestamps
    end
  end
end
