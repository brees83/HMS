class AddTimeZonesToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :timezone, :string
  end
end
