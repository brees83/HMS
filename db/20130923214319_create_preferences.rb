class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :voice
      t.boolean :text
      t.boolean :email
      t.string :msg_pref

      t.timestamps
    end
  end
end
