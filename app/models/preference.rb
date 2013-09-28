class Preference < ActiveRecord::Base
  attr_accessible :email, :msg_pref, :text, :voice, :timezone
  belongs_to :customer_profile
  

end
