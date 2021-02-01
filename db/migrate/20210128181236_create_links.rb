class CreateLinks < ActiveRecord::Migration[6.1]
  def up
    create_table :links, id: :uuid do |t|
      t.string :title
      t.string :url
      t.string :identifier, unique: true

      t.timestamps
    end
    add_index :links, :identifier, unique: true
  end

  def down
    remove_index :links, :identifier
    drop_table :links
  end
end
