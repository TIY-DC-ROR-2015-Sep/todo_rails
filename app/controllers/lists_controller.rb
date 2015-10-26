class ListsController < ApplicationController
  def index
  end

  def new
  end

  def create
    l = current_user.lists.create! name: params[:list_name]
    redirect_to "/lists/#{l.name}"
  end
end
