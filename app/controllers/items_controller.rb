class ItemsController < ApplicationController
  def new
    @list = List.find_by_name params[:list_name]
  end

  def create
    # @hard_to_speel_thing = 1
    # current_user.error! @hard_to_spell_thing
    list = List.find_by_name params[:list_name]
    list.items.create(
      description: params[:description],
      due_date:    params[:due_date]
    )
    redirect_to "/lists/#{list.name}"
  end
end
