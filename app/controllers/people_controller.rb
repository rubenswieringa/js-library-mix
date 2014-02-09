class PeopleController < ApplicationController
  def show
    person = Person.find params[:id]
    render json: person
  end

  def update
  end
end