class AddressController < ApplicationController
  before_action :find_person
  before_action :find_address, except: [:index, :new, :create]


  def index
    @addresses = @person.address
  end

  def show
    @address = Address.find(params[:id])
  end

  def create
    @address = @person.address.new(address_params)
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
    if @address.update(address_params)
      redirect_to person_address_path(@person, @address)
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
      params.require(:address).permit(:city, :state, :zip, :email_address)
    end

    def find_person
       @person = Person.find(params[:person_id])
    end

    def find_address
      @address = @person.address.find(params[:id])
    end

end
