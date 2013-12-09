class AddShowInTopMenuToRefineryPages < ActiveRecord::Migration
  def change
  	add_column :refinery_pages, :show_in_top_menu, :boolean, :default => false
  end
end
