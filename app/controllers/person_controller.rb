class PersonController < ApplicationController

  before_action :person, except: [:index, :new, :create]

  def index
    @people = Person.all.by_name
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to person_path(@person)
    else
      render :new
    end
  end

  def update
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def show
  end

  def edit
    @person = Person.edit
  end

  def new
    @person = Person.new
  end

  def destroy
    @person.destroy
    redirect_to person_path
  end

  private
    def person_params
      params.require(:person).permit(:name, :gender, :height, :activity_level, :eye_color, :hair_color, :ethnicity, :interest)
    end

    def person
      @person = Person.find(params[:id])
    end
end
