class Users < ActiveRecord::Migration[5.1]
  def self.up

    create_table :users do |t|
      t.column :lib_id, :integer
      t.column :user_last_name, :string, :limit => 100, :null =>false
      t.column :user_name, :string, :limit => 100, :null =>false
      t.column :user_second_name, :string, :limit => 100
      t.column :user_adres, :string, :limit => 1000, :null =>false
      t.column :phone, :string
      t.column :number_ticket, :string, :null =>false
    end


  end
end