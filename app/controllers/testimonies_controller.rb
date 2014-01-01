class TestimoniesController < ApplicationController
  def show
    @testimony = Testimony.find params[:id]
  end

  private
    def testimony_params
      params.require(:testimony)
            .permit :name, :summary, :content, :video_url
    end
end
