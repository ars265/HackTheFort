class Datas < ActiveRecord::Migration
  def change
    create_table :datas do |t|

      t.timestamps
    end
  end
end
