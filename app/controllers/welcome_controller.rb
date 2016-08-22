class WelcomeController < ApplicationController
def home
  @person = Person.all

end
end
