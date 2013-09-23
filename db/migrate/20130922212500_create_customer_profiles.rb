class CreateCustomerProfiles < ActiveRecord::Migration
  def change
    create_table :customer_profiles do |t|
      t.string :customer_name
      t.date :start_date
      t.date :renewal_date
      t.string :primary_contact_email
      t.string :secondary_contact_email
      t.integer :phone_contact
      t.integer :fax_contact
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :customer_type
      t.integer :caseload_maximum
      t.boolean :active
       
      t.timestamps
    end
  end
end
