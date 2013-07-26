class AddFieldsToSpreeContents < ActiveRecord::Migration
  def change
    add_column :spree_contents, :template, :string
    add_column :spree_contents, :css_class, :string
    add_column :spree_contents, :ignore_params, :boolean
  end
end
