class PagesController < ApplicationController
  def home
    flash[:success] = 'Success!'
  end
end
