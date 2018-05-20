class Employee < ApplicationRecord
  belongs_to :lib
  validates_presence_of :name, :message=>"Error Message"
  validates_presence_of :last_name, :message=>"Error Message"
  validates_presence_of :position, :message=>"Error Message"



end
