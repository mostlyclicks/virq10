class SubMenuPresenter < Refinery::Pages::MenuPresenter

  def initialize(collection, context)
    super
    self.max_depth = 1
  end

end