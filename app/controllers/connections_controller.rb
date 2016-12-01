class ConnectionsController < ApplicationController

  before_action :set_connection, only: [ :edit, :update, :accept, :refuse, :confirm, :cancel, :destroy ]
  before_action :set_mission, only: [ :new, :create, :edit, :update, :accept, :refuse, :confirm, :cancel, :destroy ]
  before_action :set_packer, only: [ :destroy ]

  def index
    @connections = policy_scope(Connection)
  end

  def new
    @connection = Connection.new
    authorize @connection
  end

  def create
    @connection = @mission.connections.new(connection_params)
    params[:commit] == 'Send' ? (@connection.status = 'online') : (@connection.status = 'draft')
    authorize @connection
    @connection.save ? (redirect_to authenticated_root_path) : (render :new)
  end

  def show
  end

  def edit
  end

  def update
    params[:commit] == 'Send' ? (@connection.status = 'online') : (@connection.status = 'draft')
    @connection.update(connection_params) ? (redirect_to authenticated_root_path) : (render :edit)
  end

  def accept
    @connection.accept
    redirect_to authenticated_root_path
  end

  def refuse
    @connection.refuse
    redirect_to authenticated_root_path
  end

  def cancel
    @connection.cancel
    redirect_to authenticated_root_path
  end

  def confirm
    @connection.confirm
    redirect_to authenticated_root_path
  end

  def destroy
    @connection.destroy
    redirect_to authenticated_root_path
  end

  private

  def set_connection
    @connection = Connection.find(params[:id])
    authorize @connection
  end

  def set_mission
    @mission = Mission.find(params[:mission_id])
  end

  def set_packer
    @packer = current_user.packer
  end

  def connection_params
    params.require(:connection).permit(:message, :status, :packer_id)
  end
end
