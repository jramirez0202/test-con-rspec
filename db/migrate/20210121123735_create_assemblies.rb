class CreateAssemblies < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies do |t|
      t.string :name
      t.integer :percent
      t.references :wine, foreign_key: true
      t.references :strain, foreign_key: true

      t.timestamps
    end
  end
end
