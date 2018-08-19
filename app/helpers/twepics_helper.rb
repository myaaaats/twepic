module TwepicsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twepics_path
    elsif action_name == 'edit'
      twepic_path
    end
  end
end
