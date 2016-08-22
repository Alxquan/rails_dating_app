class AddressController < ApplicationController
  def index

  end

  def show

  end

  def create

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy
    @address.destroy
    redirect_to ?
  end




  private
    def address_params
      params.require(??).permit(:????) # any other information will be thrown out
    end

    def find_person
      # @person = Person.find(params[:person_id])
    end

    def find_address
      @address = @person.address.find(params[:id])
    end
  end

end
