class CreateClients < ActiveRecord::Migration[7.2]
  def change
    create_table :clients do |t|
      t.string :first_name, limit: 30, null: false
      t.string :last_name, limit: 50, null: false
      t.integer :credit_score, null: false
      t.string :phone, limit: 15, null: false
      t.string :email, limit: 200, null: false

      t.timestamps
    end

    add_index :clients, :email, unique: true
  end
end
