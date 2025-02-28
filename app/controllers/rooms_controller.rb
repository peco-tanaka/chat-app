class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "room successfully created"
      redirect_to room_path
    else
      flash[:error] = "Something went wrong"
      render :new, status: :unprocessable_entity
    end
  end

  private
  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
