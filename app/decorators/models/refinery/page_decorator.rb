Refinery::Page.class_eval do
  attr_accessible :show_in_footer, :show_in_top_menu

  def self.footer_menu_pages
    where :show_in_footer => true
  end

  def self.top_menu_pages
    where :show_in_top_menu => true
  end


	
end