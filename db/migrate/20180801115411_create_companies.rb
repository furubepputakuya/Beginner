class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :name
      t.string :email
      t.string :phone
      t.string :password_digest

      t.timestamps
    end
  end
end
