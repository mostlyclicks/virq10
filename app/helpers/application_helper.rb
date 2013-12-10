module ApplicationHelper

  def top_menu
    menu_items = Refinery::Menu.new(Refinery::Page.top_menu_pages)

    presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
    presenter.dom_id = "top_menu"
    presenter.css = "top_menu"
    presenter.menu_tag = :div
    presenter
  end

  def navigation_menu
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.css = "navbar-inners"
    presenter.menu_tag = :div
    presenter.list_tag_css = "nav"
    presenter.selected_css = "active"
    presenter.first_css = ""
    presenter.last_css = ""
    presenter.max_depth = 0 # prevents dropdown menus, which don't render correctly
    presenter
  end

  def footer_menu
    menu_items = Refinery::Menu.new(Refinery::Page.footer_menu_pages)

    presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
    presenter.dom_id = "footer_menu"
    presenter.css = "footer_menu"
    presenter.menu_tag = :div
    presenter
  end

  def sub_menu_pages(page)
    Refinery::Menu.new(refinery_menu_pages.detect{ |item| item.original_id == page.id }.children)
  end
  
end
