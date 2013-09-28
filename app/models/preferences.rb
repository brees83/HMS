class Preferences < ActiveRecord::Base
  attr_accessible :voice, :text, :email, :msg_pref, :timezone
  belongs_to :customer_profile
  #validates :customer_id, presence: true
  end
