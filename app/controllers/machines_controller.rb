class MachinesController < ApplicationController
  def index
    @machines = Machine.all
  end

  def show
    machine = Machine.find(params[:id])
    @machine_rapports = MachineRapport.where(machine_id: machine.id)
    
  end

  def view
    @machine = Machine.find(params[:id])
  end
end
