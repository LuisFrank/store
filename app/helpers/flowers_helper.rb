module FlowersHelper

  def flower_author(instrument)
    user_signed_in? && current_user.id ==  instrument.user_id
  end
end
