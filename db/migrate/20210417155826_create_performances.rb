class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.decimal  :KPI1,             default: 0.0
      t.decimal  :KPI2,             default: 0.0
      t.decimal  :KPI3,             default: 0.0
      t.decimal  :KPI4,             default: 0.0
      t.decimal  :KPI5,             default: 0.0
      t.decimal  :KPI6,             default: 0.0
      t.string   :current_credit,   default: ""
      t.string   :credit_threshold, default: ""
      t.string   :initial_credit,   default: ""
      t.string   :current_risk,     default: ""
      t.string   :initial_risk,     default: ""

      t.timestamps
    end
    add_reference :performances, :vendor, foreign_key: true, null: false
  end
end
