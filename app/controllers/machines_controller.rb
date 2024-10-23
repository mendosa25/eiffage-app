class MachinesController < ApplicationController
  def index
    @machines = Machine.all
  end

  def view
    @machine = Machine.find(params[:id])
  end
end
