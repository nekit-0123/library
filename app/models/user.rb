class User < ActiveRecord::Base
  has_many :outs
  belongs_to :lib
  validates_presence_of :user_last_name, :message=>"Error Message"
  validates_presence_of :user_name, :message=>"Error Message"
  validates_presence_of :user_adres, :message=>"Error Message"

end
