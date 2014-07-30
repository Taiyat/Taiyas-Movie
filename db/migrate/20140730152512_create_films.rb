class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :caption
      t.string :url
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
