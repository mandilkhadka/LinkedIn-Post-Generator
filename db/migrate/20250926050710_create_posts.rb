class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :notes
      t.string :tone
      t.string :length_option
      t.boolean :include_hashtags, default: false
      t.text :generated_text
      t.text :hashtags
      t.string :status, default: 'pending'
      t.timestamps
    end
  end
end
