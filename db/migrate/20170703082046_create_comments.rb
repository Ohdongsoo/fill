class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :post_id
      # 같은 내용 t.belongs_to :post
      t.string :content
      t.string :writer

      t.timestamps
    end
  end
end
