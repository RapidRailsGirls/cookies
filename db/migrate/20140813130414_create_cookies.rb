class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|

      t.timestamps
    end
  end
end
