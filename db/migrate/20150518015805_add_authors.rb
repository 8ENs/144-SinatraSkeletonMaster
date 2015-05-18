class AddAuthors < ActiveRecord::Migration
  def change
    add_column(:messages, :author_id, :integer)
    add_index(:messages, :author_id)

    remove_column(:messages, :author)

    create_table :authors do |t|
      t.string :name
      t.timestamps
    end
  end
end