class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :slug, :unique => true
      t.string :version
      t.date :released_on

      t.timestamps
    end
    add_index :books, :slug
  end
end
