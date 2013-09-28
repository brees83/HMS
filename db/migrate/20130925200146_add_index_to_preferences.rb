class AddIndexToPreferences < ActiveRecord::Migration
  def change
    
      add_column :preferences, :customer_profile_id, :integer
      add_index :preferences, :customer_profile_id
    end
  end





