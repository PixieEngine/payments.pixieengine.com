class PurchasesController < ApplicationController
  def create
    Purchase.create params[:purchase]

    render :json => {:status => :ok}, :callback => params[:callback]
  end
end
