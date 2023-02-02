class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :gender
      t.string :email
      t.string :phone
      t.string :nationality
      t.string :residency
      t.string :address
      t.string :project_type
      t.string :project_description
      t.string :project_budget
      t.string :project_hours
      t.string :portfolio
      t.string :website
      t.string :extras

      t.timestamps
    end
  end
end
