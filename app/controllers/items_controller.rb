class ItemsController < ApplicationController

  def index
    render layout: 'top'
  end

  def show
    render layout: 'application'
  end

  def new
    render layout: 'second_application'
  end

  def confirm
    render layout: 'second_application'
  end

  def done
    render :layout => 'second_application'
  end

  def brand
    render layout: 'application'
  end

  def category
    render layout: 'application'
  end

  def create
    Item.create(params[:name])
  end

end
