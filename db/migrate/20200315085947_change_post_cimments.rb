class ChangePostCimments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :post_cimments, :post_, :post_id
  	rename_column :post_cimments, :cimment, :comment
  	rename_table :post_cimments, :post_comments
  end
end
