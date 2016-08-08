class RoomsController < ApplicationController
  before_action :room, except: [:index, :new, :create]

  def index
  	@rooms = current_user.rooms 
  end

  def show 
  end 

  def new
  	@room = Room.new 
  end

  def create
  	@room = Room.new(room_params)
  	if @room.save
  	redirect_to rooms_path 
  	else 
  	render :new 
  	end  
  end 

  def edit 
  end 

  def destroy
  	@room.destroy
  	redirect_to rooms_path  
  end 


  private 

  def room_params
  	params.require(:room).permit(:name, :square_footage, :size)
  end

  def room
  	@room = Room.find(params[:id])
  end
end
