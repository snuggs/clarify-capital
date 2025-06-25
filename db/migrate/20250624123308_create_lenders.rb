class CreateLenders < ActiveRecord::Migration[7.2]
  def change
    create_table :lenders do |t|
      t.string :name, null: false
      t.integer :minimum_loan, null: false
      t.integer :maximum_loan, null: false, default: Loan::MAXIMUM_AMOUNT
      t.integer :minimum_credit, null: false
      t.decimal :interest, precision: 3, scale: 3, null: false

      t.timestamps
    end


    add_index :lenders, :minimum_credit
    add_index :lenders, :interest
  end
end
