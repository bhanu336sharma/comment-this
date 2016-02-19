class AddPosToComment < ActiveRecord::Migration
  def change
    add_column :comments, :pos, :string
  end
end
