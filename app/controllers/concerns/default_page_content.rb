module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Deven Clingman Portfolio"
    @seo_keywords = "Deven Clingman portfolio"
  end
end