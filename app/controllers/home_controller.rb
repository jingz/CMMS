class HomeController < ApplicationController
  def index
    @workorders = Workorder.my_tasks(current_user).order("created_at desc")
  end
end
