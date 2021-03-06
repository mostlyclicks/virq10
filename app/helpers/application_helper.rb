module ApplicationHelper

  # def top_menu
  #   menu_items = Refinery::Menu.new(Refinery::Page.top_menu_pages)

  #   presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
  #   presenter.dom_id = "top_menu"
  #   presenter.css = "navbar navbar-default navbar-static-top"
  #   presenter.list_tag_css = "nav navbar-nav navbar-right"
  #   presenter.menu_tag = :div
  #   presenter
  # end

  # def current_page(page)
  #   @current_page = page
  # end

  # def navigation_menu
  #   presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
  #   presenter.css = "navbar-inners"
  #   presenter.menu_tag = :div
  #   presenter.list_tag_css = "nav nav-pills nav-stacked chamber"
  #   presenter.selected_css = "active"
  #   presenter.first_css = ""
  #   presenter.last_css = ""
  #   presenter.max_depth = 0 # prevents dropdown menus, which don't render correctly
  #   presenter
  # end

  # def footer_menu
  #   menu_items = Refinery::Menu.new(Refinery::Page.footer_menu_pages)

  #   presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
  #   presenter.dom_id = "footer_menu"
  #   presenter.css = "footer_menu"
  #   presenter.menu_tag = :div
  #   presenter
  # end


  def page_style(page)
    if page.slug == 'city-of-viroqua'
        'city'
    elsif page.slug == 'viroqua-tourism'
        'tourism'
    elsif page.slug == 'chamber-mainstreet'
        'chamber'
    end
  end

  # #more presenter friendly
  def sub_menu_pages
    sub_menu_items = Refinery::Menu.new(refinery_menu_pages.detect{ |item| item.original_id == @page.id }.children)
    style = page_style(@page)
    presenter = Refinery::Pages::MenuPresenter.new(sub_menu_items, self)
    presenter.menu_tag = :div
    presenter.css = "#{style}"
    presenter.list_tag = "ul class=\"nav nav-pills nav-stacked #{style}\""
    #presenter.list_tag_css = "nav nav-pills nav-stacked #{style}"
    presenter.max_depth = 6
    first_css = :first
    last_css = :last
    presenter
  end


  # def nav_active(page)
  #   if page == @current_page
  #       'active'        
  #   end
  # end

  #def city_footer_menu
#
  #end

  #def tourism_footer_menu
#
  #end

  #def chamber_footer_menu
#
  #end
  
end
