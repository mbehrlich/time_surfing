class ChangeRecommend < ActiveRecord::Migration
  def change
    change_column_null :references, :recommended, true
    change_column_default :references, :recommended, false
  end
end
