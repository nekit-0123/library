class Out < ActiveRecord::Base
  belongs_to :user
  belongs_to :book


  validates_presence_of :date_grant


end
