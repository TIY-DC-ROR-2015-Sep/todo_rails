class ListsController < ApplicationController
  def index
    @lists = current_user.lists
  end

  def new
  end

  def create
    l = current_user.lists.create! name: params[:list_name]
    redirect_to "/lists/#{l.name}"
  end

  def show
    @list = List.find_by_name params[:name]
  end
end
