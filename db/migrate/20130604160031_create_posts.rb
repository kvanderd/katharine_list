class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string(:title)
      t.string(:description)
      t.string(:price)
      t.string(:location)
      t.integer(:category_id)
      t.string(:private_url)
    end
  end
end
