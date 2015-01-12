class AddRankToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :rank, :integer
  end
end
