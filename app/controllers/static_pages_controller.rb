class StaticPagesController < ApplicationController
  def home
    @flickr = Flickr.new
    if params[:user_id]
      @photos = @flickr.people.getPublicPhotos(user_id: photo_params[:user_id])
    end
  end

  private

  def photo_params
    params.permit(:user_id, :commit)
  end
end
