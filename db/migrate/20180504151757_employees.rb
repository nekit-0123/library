class Employees < ActiveRecord::Migration[5.1]

    def self.up

      create_table :employees do |t|
        t.column :lib_id, :integer
        t.column :name, :string, :limit => 100, :null =>false
        t.column :last_name, :string, :limit => 100, :null =>false
        t.column :second_name, :string, :limit => 100
        t.column :birth_date, :date
        t.column :job_date, :date
        t.column :position, :string, :limit => 256, :null =>false
        t.column :education, :string, :limit => 100
      end
    end
  end
