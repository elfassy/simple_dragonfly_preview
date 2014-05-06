class SimpleDragonflyPreview::ImageController < ApplicationController
  layout false

  def upload
    if params[:image].present?
      app = Dragonfly.app
      uid = app.store(params[:image].tempfile)
      
      @image = app.fetch(uid)
      attributes_hash = {
        uid: uid
      }
      if params[:attribute_keys].split(",").include?("name")
        attributes_hash.merge! name: params[:image].original_filename
      end
      @retained_image = Dragonfly::Serializer.json_b64_encode(attributes_hash) if @image 
      @resize = params[:resize]
    end
    render :iframe
  end

  def iframe
  end
end
