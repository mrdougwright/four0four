class CreateNotfounds < ActiveRecord::Migration
  def change
    create_table :notfounds do |t|
      t.string :site_url

      t.timestamps
    end
  end
end
