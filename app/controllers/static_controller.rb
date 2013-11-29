class StaticController < ApplicationController
  def home
    @posts = Post.all
    @newsletters = Newsletter.all
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
