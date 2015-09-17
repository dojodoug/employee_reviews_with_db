require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'dev.sqlite3'
)

class EmployeeMigration < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.decimal :department_salary
    end

    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.decimal :salary
      t.integer :department_id
      t.boolean :satisfactory, default: true
      t.timestamps null: false
    end

    create_table :reviews do |t|
      t.text :review
    end
  end

end
