class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, :string
      t.string :version, :string
      t.string :released_on, :date

      t.timestamps
    end
  end
end
