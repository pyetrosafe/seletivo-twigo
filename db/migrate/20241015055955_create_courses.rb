class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :author
      t.decimal :price, precision: 12, scale: 2
      t.string :language
      t.string :video_url
      t.integer :video_time
      t.string :thumbnail
      t.datetime :end_date

      t.timestamps
    end
  end
end
