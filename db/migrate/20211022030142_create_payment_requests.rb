class CreatePaymentRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_requests do |t|
      t.integer :amount
      t.string :currency
      t.string :description
      t.integer :status
      t.integer :external_payment_request_id

      t.timestamps
    end
  end
end
