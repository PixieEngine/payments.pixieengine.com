class LeadsController < ApplicationController
  def create
    lead = Lead.create params[:lead]

    render :json => lead, :callback => params[:callback]
  end
end
