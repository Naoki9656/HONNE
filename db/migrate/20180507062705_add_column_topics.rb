class AddColumnTopics < ActiveRecord::Migration[5.1]
  def up
    add_column :topics, :title, :string
  end

  def down
    remove_column :topics, :title, :string
  end
end
