class TestimoniesController < ApplicationController
  def show
    @testimony = Testimony.find params[:id]
  end

  def index
    @testimonies = Testimony.all
  end

  def mercury_update
    testimony = Testimony.find params[:id]
    # Update page
    render text: ''
  end

  private
    def testimony_params
      params.require(:testimony)
            .permit :name, :summary, :content, :video_url
    end
end
