ActiveAdmin.register CustomerProfile do



index do
  column :customer_name, :sortable => :customer_name
  column :primary_contact_email, :sortable => :primary_contact_email
  column :customer_type, :sortable => :customer_type
  column :state, :sortable => :state
  column :start_date, :sortable => :start_date
  column :renewal_date, :sortable => :renewal_date
 # column :timezone 
#    time_zone_select customer_profile.timezone
  
  end
end
