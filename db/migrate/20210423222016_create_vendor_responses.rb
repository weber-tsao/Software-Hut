class CreateVendorResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :vendor_responses do |t|

      t.timestamps
    end
    add_reference :vendor_responses, :question, foreign_key: true, null: false
    add_reference :vendor_responses, :answer_option, foreign_key: true, null: false
    add_reference :vendor_responses, :vendor, foreign_key: true, null: false
  end
end
