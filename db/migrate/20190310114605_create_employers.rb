class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :contact_name
      t.string :message
      t.string :email,              null: false, default: ""
      t.timestamps
    end
  end
end
