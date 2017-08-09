class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string "title"
        t.datetime "start_dated" 
        t.datetime  "due_date"
        t.text       "place"
        t.text      "description"
        t.integer   "user_id"
        t.integer   "viewed"
      t.timestamps
    end
  end
end
