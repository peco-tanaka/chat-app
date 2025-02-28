class MessagesController < ApplicationController
  def index
    @user = User.new(params[:id])
  end
end
