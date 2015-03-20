class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :subject
      t.string :to_email
      t.string :guid

      t.timestamps
    end
  end
end
