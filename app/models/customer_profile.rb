class CustomerProfile < ActiveRecord::Base
  attr_accessible :customer_name, :start_date, :customer_name, :start_date, :renewal_date, :primary_contact_email, 
  :secondary_contact_email, :phone_contact, :fax_contact, :street, :city, :state,
   :zip, :customer_type, :caseload_maximum, :active
  
  
  has_one :preferences
  
  after_create :initialize_customer_profile


#protected
  def initialize_customer_profile
  #puts "saved"  
    
    Preferences.create!({voice: true, text: true, email: true, msg_pref: "Send Just Texts" })
    


  
   end
 end
 
 