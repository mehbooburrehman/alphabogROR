class AddUseridArticles < ActiveRecord::Migration[6.1]
  def change
    add_column:atricles,:user_id,:integer
  end
end
