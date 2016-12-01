class DecksController < ApplicationController

  before_action :set_resource
  before_action :set_editable

  def show
    if current_user.crew?
      crew_deck
    else
      packer_deck
    end
  end

  private

  def packer_deck
    authorize @packer
    @connections = @packer.connections.order(created_at: :desc)
    @all_accepted = @connections.select { |c| c.accepted? }
    @all_online = @connections.select { |c| c.online? }
    @all_draft = @connections.select { |c| c.draft? }
    @all_old = @connections.select { |c| !c.draft? && !c.online? && !c.accepted? }
  end

  def crew_deck
    authorize @crew
    @missions = @crew.missions.order(created_at: :desc)
    @all_closed = @missions.select { |c| c.closed? }
    @all_online = @missions.select { |c| c.online? }
    @all_draft = @missions.select { |c| c.draft? }
    @all_old = @missions.select { |c| !c.draft? && !c.online? && !c.closed? }
    @url_logo = @crew.logo.nil? ? 'logo.png' : @crew.logo.path
  end

  def set_resource
    if current_user.crew?
      @resource = current_user.crew
      @crew = @resource
    else
      @resource = current_user.packer
      @packer = @resource
    end
  end

  def set_editable
    @editable = user_signed_in? ? (current_user == @resource.user || current_user.admin) : false
  end

end
