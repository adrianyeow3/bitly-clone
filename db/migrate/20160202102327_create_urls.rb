class CreateUrls < ActiveRecord::Migration
	def change
    create_table :urls do |t|
      t.string :short_url_text
      t.string :long_url_text

      t.timestamps null: false
    end
	end
end
