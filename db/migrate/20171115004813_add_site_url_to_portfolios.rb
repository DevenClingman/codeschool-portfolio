class AddSiteUrlToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :site_url, :string, default: "#"
  end
end
