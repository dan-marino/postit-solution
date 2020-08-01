class AddTimestampsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :created_at, :datetime # arg1 table name, arg2 column name arg3 type
    add_column :posts, :updated_at, :datetime
  end
end
