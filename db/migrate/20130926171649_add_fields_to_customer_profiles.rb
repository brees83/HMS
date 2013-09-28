class AddFieldsToCustomerProfiles < ActiveRecord::Migration
  def change
    add_column :customer_profiles, :Timezone, :timezone
  end
end
