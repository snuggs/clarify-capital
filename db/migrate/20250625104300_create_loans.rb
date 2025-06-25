class CreateLoans < ActiveRecord::Migration[7.2]
  def change
    create_table :loans do |t|
      t.references :client, null: false, foreign_key: true
      t.references :lender, null: false, foreign_key: true
      t.integer :amount, null: false
      t.date :start, null: false, default: Date.today
      t.date :due, null: false
      t.string :status, null: false, default: :new

      t.timestamps
    end
  end
end
