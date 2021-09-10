class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.date :date
      t.jsonb :content, null: false, default: []
      t.timestamps null: false 
     end
  end
end
