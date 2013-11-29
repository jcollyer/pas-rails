class StaticController < ApplicationController
  def home
    @posts = Post.all
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
