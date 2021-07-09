class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end

    add_reference :books, :author, index: true, foreign_key: true
  end
end
