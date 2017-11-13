class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
    	t.string :author
    	t.string :description
    	t.string :publishedAt
    	t.string :title
    	t.string :url
    	t.string :urlToImage
      t.timestamps
    end
  end
end
