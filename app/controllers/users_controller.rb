class UsersController < ApplicationController

  def show
    render :layout => 'application'
  end

  def edit
    render :layout => 'application'
  end

  def new
    render :layout => 'second_application'
  end

  def index
    render :layout => 'third_application'
  end

  def phone
    render :layout => 'third_application'
  end
  
  def address
    render :layout => 'third_application'
  end
    
  def purchase
    render :layout => 'third_application'
  end
    
  def complete
    render :layout => 'third_application'
  end

end
