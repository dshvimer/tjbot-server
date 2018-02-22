class CreateSnapshots < ActiveRecord::Migration[5.1]
  def change
    create_table :snapshots do |t|

      t.timestamps
    end

    add_attachment :snapshots, :image
  end
end
