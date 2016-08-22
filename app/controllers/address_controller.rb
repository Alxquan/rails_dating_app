class AddressController < ApplicationController
  before_action :find_person
  before_action :find_address, except: [:index, :new, :create]


  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def create
    @address = @address.Address.new(car_params)  #associating the new car with the person
    if @address.save
      redirect_to person_address_path(@person, @address)
    else
      render :new
    end
  end

  def new
    @address = Address.new
  end

  def edit

  end

  def update
    if @car.update(car_params)
      redirect_to person_car_path(@person, @car)
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to person_address_path
  end




  private
    def address_params
      params.require(??).permit(:????) # any other information will be thrown out
    end

    def find_person
       @person = Person.find(params[:person_id])
    end

    def find_address
      @address = @person.address.find(params[:id])
    end
  end

end
