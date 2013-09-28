class AddFieldsToPreferences < ActiveRecord::Migration
  def change

    add_column :preferences, :holiday_new_year, :boolean, :default => true
    add_column :preferences, :holiday_martin_luther_king_jr, :boolean, :default => true
    add_column :preferences, :holiday_presidents, :boolean, :default => true
    add_column :preferences, :holiday_memorial, :boolean, :default => true
    add_column :preferences, :holiday_independence, :boolean, :default => true
    add_column :preferences, :holiday_labor, :boolean, :default => true
    add_column :preferences, :holiday_columbus, :boolean, :default => true
    add_column :preferences, :holiday_veterans, :boolean, :default => true
    add_column :preferences, :holiday_thanksgiving, :boolean, :default => true
    add_column :preferences, :holiday_christmas, :boolean, :default => true

    add_column :preferences, :added_holiday_1, :date
    add_column :preferences, :added_holiday_2, :date
    add_column :preferences, :added_holiday_3, :date
    add_column :preferences, :added_holiday_4, :date
    add_column :preferences, :added_holiday_5, :date
    add_column :preferences, :added_holiday_6, :date
    add_column :preferences, :added_holiday_7, :date

    add_column :preferences, :sunday_send, :boolean, :default => true
    add_column :preferences, :sunday_start, :time, :default =>'10:00:00'
    add_column :preferences, :sunday_end, :time, :default =>'18:00:00'
    add_column :preferences, :monday_send, :boolean, :default => true
    add_column :preferences, :monday_start, :time, :default =>'09:00:00'
    add_column :preferences, :monday_end, :time, :default =>'20:00:00'
    add_column :preferences, :tuesday_send, :boolean, :default => true
    add_column :preferences, :tuesday_start, :time, :default =>'09:00:00'
    add_column :preferences, :tuesday_end, :time, :default =>'20:00:00'
    add_column :preferences, :wednesday_send, :boolean, :default => true
    add_column :preferences, :wednesday_start, :time, :default =>'09:00:00'
    add_column :preferences, :wednesday_end, :time, :default =>'20:00:00'
    add_column :preferences, :thursday_send, :boolean, :default => true
    add_column :preferences, :thursday_start, :time, :default =>'09:00:00'
    add_column :preferences, :thursday_end, :time, :default =>'20:00:00'
    add_column :preferences, :friday_send, :boolean, :default => true
    add_column :preferences, :friday_start, :time, :default =>'09:00:00'
    add_column :preferences, :friday_end, :time, :default =>'20:00:00'
    add_column :preferences, :saturday_send, :boolean, :default => true
    add_column :preferences, :saturday_start, :time, :default =>'10:00:00'
    add_column :preferences, :saturday_end, :time, :default =>'18:00:00'
  end
end
