class CreateOriginalApps < ActiveRecord::Migration[5.2]
  def change
    create_table :original_apps do |t|

      t.timestamps
    end
  end
end
