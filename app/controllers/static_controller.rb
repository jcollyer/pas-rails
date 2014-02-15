class StaticController < ApplicationController
  def home
    @posts = Post.last
    @newsletters = Newsletter.all.order('date ASC')
  end

  def about
  end

  def contact
  end

  def programs
  end

  def donate
  end

end
