class AddTitleToBlogposts < ActiveRecord::Migration[7.0]
  def change
    add_column :blogposts, :title, :string
  end
end
