class ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).per(16).includes(:images)
    render layout: 'top'
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.images
    render layout: 'common'
    
  end

  def new
    @item = Item.new
    @large_classes = LargeClass.all
    @middle_classes = MiddleClass.all
    @small_classes = SmallClass.all
    @conditions = Condition.all
   
    @shipping_fee_payers = ShippingFeePayer.all
    @shipping_days = ShippingDay.all
    render layout: 'second_application'
  end

  def confirm
    render layout: 'second_application'
  end

  def done
    render :layout => 'second_application'
  end

  def brand
    render layout: 'common'
  end

  def category
    render layout: 'common'
  end

  def create
    Item.create(item_params)
    redirect_to :action => "new"
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :large_class_id, :middle_class_id, :small_class_id, :condition_id, :shipping_fee_payer_id, :shipping_day_id, :price)
  end



end
