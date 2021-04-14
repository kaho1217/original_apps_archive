class CreateOriginalApps < ActiveRecord::Migration[5.2]
  def change
    create_table :original_apps do |t|
      t.string  :url
      t.string  :image
      t.string  :app_name
      t.text  :contents
      t.string  :producer
      t.integer :category_id
      t.timestamps
    end
  end
end
