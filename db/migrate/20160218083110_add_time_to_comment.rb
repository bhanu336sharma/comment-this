class AddTimeToComment < ActiveRecord::Migration
  def change
    add_column :comments, :time, :integer
  end
end
