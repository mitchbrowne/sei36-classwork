class PagesController < ApplicationController
  def hello
    render :hello # equivalent to erb :hello. You can render more things than just erb
  end

  def goodbye
    render :goodbye
  end

  def welcome
    render :welcome
  end

  def about
    render :about
  end

  def lol
  end
end
