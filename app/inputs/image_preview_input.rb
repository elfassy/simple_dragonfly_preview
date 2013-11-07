
class ImagePreviewInput < SimpleForm::Inputs::Base
  def input
    resize = options.delete(:size) || '100x80#'
    size = resize.sub(/\D$/,'')
    
    template.render("simple_dragonfly_preview/image/form", 
      f: @builder, 
      attribute_name: attribute_name.to_s, 
      retained_id: (@builder.lookup_model_names + ["retained", attribute_name.to_s]).join("_"), 
      image_id: (@builder.lookup_model_names + [attribute_name.to_s, "preview"]).join("_"),
      size: size, 
      resize: resize )
  end
end


