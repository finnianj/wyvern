class AddContentToBlogposts < ActiveRecord::Migration[7.0]
  def change
    add_column :blogposts, :content, :text
  end
end
