class CreateCompanyForms < ActiveRecord::Migration[5.2]
  def change
    create_table :company_forms do |t|
      t.string :title
      t.string :catchcopy
      t.string :money
      t.string :otherwise_money
      t.string :period
      t.text :work_content
      t.text :otherwise
      t.integer :company_id
      t.string :work_type
      t.string :work_list
      t.string :level_list
      t.string :japan
      t.string :image

      t.timestamps
    end
  end
end
