module BoyattersHelper
  def choose_new_or_edit
    if action_name == 'new' 
      confirm_boyatters_path
    elsif action_name == 'edit'
      boyatter_path
    end
  end
end