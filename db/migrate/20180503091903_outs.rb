class Outs < ActiveRecord::Migration[5.1]
  def self.up
    create_table :outs do |t|
      t.column :book_id, :integer
      t.column :user_id, :integer
      t.column :id_user, :integer
      t.column :date_grant, :date, :null =>false
      t.column :date_return, :date

    end
  end
end