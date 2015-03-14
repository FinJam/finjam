class UsersController < ApplicationController
  def details
    redirect_to edit_person_path(current_user.person)
  end
end
