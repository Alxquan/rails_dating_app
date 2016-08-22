class AddressesController < ApplicationController
  before_action :find_person
  before_action :find_address, except: [:index, :new, :create]


  def index
    @addresses = @person.address
  end

  def show
  end

  def create
    @address = Address.new(address_params)
    @address[:person_id] = @person.id
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
    redirect_to person_path(@person)
  end




  private
    def address_params
      params.require(:address).permit(:city, :state, :zip, :email_address)
    end

    def find_person
       @person = Person.find(params[:person_id])
    end

    def find_address
      @address = Address.find(params[:id])
    end

end
