class SimpleDragonflyPreview::ImageController < ApplicationController
  layout false

  def upload
    if params[:image].present?
      app = Dragonfly.app
      uid = app.store(params[:image].tempfile)
      @image = app.fetch(uid)
      @retained_image = Dragonfly::Serializer.json_encode(uid: @image.uid) if @image 
    end
    render :iframe
  end

  def iframe
  end
end
