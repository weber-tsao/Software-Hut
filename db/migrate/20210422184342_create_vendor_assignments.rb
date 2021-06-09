class CreateVendorAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :vendor_assignments do |t|
      t.timestamps
    end
    add_reference :vendor_assignments, :user, foreign_key: true, null: false
    add_reference :vendor_assignments, :vendor, foreign_key: true, null: false
  end
end
