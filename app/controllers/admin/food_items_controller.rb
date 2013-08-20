class Admin::FoodItemsController < Admin::BaseController
  before_filter :find_food_item, except: [:index, :new, :create]
  
def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new(params[:food_item])
    
    if @food_item.save
      @food_items = FoodItem.all
      flash[:notice] = "New item created"
      redirect_to admin_food_items_path
    else
      flash[:alert] = "Item couldn't be created"
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    
    @food_item.update_attributes(params[:food_item])
    if @food_item.save
      @food_items = FoodItem.all
      flash[:notice] = "Item updated"
      redirect_to admin_food_items_path
    else
      flash[:alert] = "Item couldn't be updated"
      render :edit
    end
  
  end

  def destroy
    @food_item.destroy
    flash[:notice] = "Item deleted"
    redirect_to admin_food_items_path
  end


  private
  def find_food_item
    @food_item = FoodItem.find(params[:id])
  end
end
