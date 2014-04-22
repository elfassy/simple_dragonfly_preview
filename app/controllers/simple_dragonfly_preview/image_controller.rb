class SimpleDragonflyPreview::ImageController < ApplicationController
  layout false

  def upload
    if params[:image].present?
      app = Dragonfly.app
      uid = app.store(params[:image].tempfile)
      filename = params[:image].original_filename
      @image = app.fetch(uid)
      @retained_image = Dragonfly::Serializer.json_b64_encode(uid: uid, name: filename) if @image 
      @resize = params[:resize]
    end
    render :iframe
  end

  def iframe
  end
end
