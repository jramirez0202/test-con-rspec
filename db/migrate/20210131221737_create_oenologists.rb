class CreateOenologists < ActiveRecord::Migration[6.0]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.string :nacionality
      t.integer :age
      t.boolean :writer
      t.boolean :editor
      t.boolean :reviewer

      t.timestamps
    end
  end
end
