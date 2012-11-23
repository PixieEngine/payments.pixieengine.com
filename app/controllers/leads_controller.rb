class LeadsController < ApplicationController
  def create
    lead = Lead.create params[:lead]

    render :json => {:status => :ok}, :callback => params[:callback]
  end
end
