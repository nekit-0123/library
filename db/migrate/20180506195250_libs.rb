class Libs < ActiveRecord::Migration[5.1]
  def self.up

    create_table :libs do |t|
      t.column :user_id, :integer
      t.column :book_id, :integer
      t.column :employee_id, :integer

      t.column :libs_name, :string, :limit => 1000, :null =>false
      t.column :libs_adres, :string, :limit => 500, :null =>false
      t.column :libs_number, :string, :limit => 100, :null =>false

    end
  end
end