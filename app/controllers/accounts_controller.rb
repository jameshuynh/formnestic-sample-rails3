class AccountsController < ApplicationController
  def new
    @account = Account.new
    @account.users = [User.new, User.new]
  end
  
  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to '/'
    else
      render :action => :new      
    end
  end
end
