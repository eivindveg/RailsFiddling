class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.references :school, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :faculties, :schools
  end
end
