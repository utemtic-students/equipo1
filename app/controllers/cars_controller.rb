class CarsController < ApplicationController
  
  before_action :set_article, except: [:index,:new,:create]

  def index
  	#Todos los registros.
  	@cars = Car.all
  end


  def new
  		@cars = Car.new	
  end	
	
  def create
		#INSERT INTO
		@car = current_user.cars.new(car_params)
	  if @car.save
		redirect_to @car
	  else
	   	render :new
	  end
	 end 

  private

	def set_car
		@car = Car.find(params[:id])
	end		

	def validate_user
		redirect_to new_user_session_path, notice: "Necesitas inicar sesión"
	end	

	def car_params
		params.require(:car).permit(:tipo_de_carro, :Marca, :Modelos)
	end			 
 end