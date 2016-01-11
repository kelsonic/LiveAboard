class AddImageToLiveAboards < ActiveRecord::Migration
  def change
    add_column :live_aboards, :image, :string
  end
end
