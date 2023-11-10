class ReactionsController < ApplicationController

  # ==========ここから追加する==========
  def create
    reaction = Reaction.find_or_initialize_by(to_user_id: params[:user_id], from_user_id: current_user.id)
    reaction.update(
      status: params[:reaction]
    )
  end
  # ==========ここまで追加する==========

end
