class CreatePositionUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :position_users do |t|
      t.references :position, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
