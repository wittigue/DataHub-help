module ModelsHelper

  def model_environment_text model
    model.recommended_environment ? h(model.recommended_environment.title) : "<span class='none_text'>Unknown</span>" 
  end

  def model_jws_online_compatible? model
    return !model.recommended_environment.nil? && model.recommended_environment.title.downcase=="jws online"
  end

  def execute_model_label
    icon_filename=method_to_icon_filename("execute")

    return '<span class="icon">' + image_tag(icon_filename,:alt=>"Run",:title=>"Run") + ' Run model</span>';
  end

  def model_type_text model_type
    return "<span class='none_text'>Not specified</span>" if model_type.nil?
    return h(model_type.title)
  end

  def model_format_text model_format
    return "<span class='none_text'>Not specified</span>" if model_format.nil?
    return h(model_format.title)
  end

end
