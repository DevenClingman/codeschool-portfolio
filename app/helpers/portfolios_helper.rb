module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end

  def portfolio_link portfolio_item
    if portfolio_item.site_url == "#"
      link_to (image_tag portfolio_img(@portfolio_item.main_image, 'main'), width: '100%'), "#{@portfolio_item.site_url}"
    else
      link_to (image_tag portfolio_img(@portfolio_item.main_image, 'main'), width: '100%'), "#{@portfolio_item.site_url}", target: :_blank
    end
  end
end