class SubMenuPresenter < Refinery::Pages::MenuPresenter

#before_filter :page_slug

  def initialize(collection, context)
    super
    self.max_depth = 1
    
    @css_classes = "nav nav-pills nav-stacked tourism"
    self.list_tag_css = @css_classes
  end

  

end