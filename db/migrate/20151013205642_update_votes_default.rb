class UpdateVotesDefault < ActiveRecord::Migration
  def change
    change_column_default(:posts, :votes, 0)
  end
end
