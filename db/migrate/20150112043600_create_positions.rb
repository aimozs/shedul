class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
