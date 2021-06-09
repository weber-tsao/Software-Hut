class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string  :name
      t.string  :company_number 
      t.string  :legal_address
      t.string  :jurisdiction
      t.string  :service_type
      t.string  :contact_number
      t.string  :director
      t.boolean :approved,       default: false
    end
    add_reference :vendors, :user, foreign_key: true, null: false
    add_index :vendors, :name, unique: true
    add_index :vendors, :company_number, unique: true
  end
end