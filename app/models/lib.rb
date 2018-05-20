class Lib <  ApplicationRecord
  has_many :users
  has_many :books
  has_many :employees
  validates_presence_of :libs_number
  validates_presence_of :libs_name
  validates_presence_of :libs_adres



end