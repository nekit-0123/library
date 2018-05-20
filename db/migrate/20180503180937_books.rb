class Books < ActiveRecord::Migration[5.1]
  def self.up

    create_table :books do |t|
      t.column :lib_id, :integer
      t.column :name_book, :string, :limit => 2000, :null =>false
      t.column :autor, :string, :limit => 1000, :null =>false
      t.column :code, :string, :limit => 100
      t.column :publiching, :string, :limit => 256, :null =>false
      t.column :date_pub, :date
      t.column :price, :integer
      t.column :date_start, :integer


    end
  end
end
