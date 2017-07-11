class WellistVendor < ActiveRecord::Base
  belongs_to :wellist
  belongs_to :vendor
end
