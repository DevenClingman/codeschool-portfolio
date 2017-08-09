class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skill = Skill.all
    @portfolio = Portfolio.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
