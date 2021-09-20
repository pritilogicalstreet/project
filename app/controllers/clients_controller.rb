class ClientsController < ApplicationController
  require 'twilio-ruby'
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    Client.send_sms(@client.mobile_no)
    redirect_to clients_path
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to @client
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id]) 
    @client.destroy
    redirect_to @client
  end

  private
  
  def client_params
    params.require(:client).permit(:name, :mobile_no, :company_name)
  end
end
