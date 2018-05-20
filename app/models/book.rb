class Book < ApplicationRecord
  has_many :outs
  belongs_to :lib
  validates_presence_of :code
  validates_presence_of :name_book
end
