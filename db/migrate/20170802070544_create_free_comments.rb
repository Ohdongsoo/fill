class CreateFreeComments < ActiveRecord::Migration[5.1]
  def change
    create_table :free_comments do |t|
      t.belongs_to :user
      t.belongs_to :freepost
      t.text :content

      t.timestamps
    end
  end
end
