class CreateStumanagers < ActiveRecord::Migration
  def change
    create_table :stumanagers do |t|
      t.string :name
      t.string :deptname
      t.integer :score

      t.timestamps null: false
    end
  end
end
