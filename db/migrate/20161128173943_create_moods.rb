class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :mood

      t.timestamps

    end
  end
end
