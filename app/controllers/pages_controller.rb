class PagesController < ApplicationController
  def home
    @testimonies = Testimony.all
  end
end
