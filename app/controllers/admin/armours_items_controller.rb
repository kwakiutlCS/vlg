class Admin::ArmoursItemsController < Admin::BaseController

  before_filter :find_armour, except: [:index, :new, :create]
  
  def index
    @armours = ArmoursItem.all
  end

  def new
    @armour = ArmoursItem.new
  end

  def create
    @armour = ArmoursItem.new(params[:armours_item])
    if @armour.save
      @armours = ArmoursItem.all
      flash[:notice] = "New item created"
      redirect_to admin_armours_items_path
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

    if @armour.update_attributes(params[:armours_item])
      @armours = ArmoursItem.all
      flash[:notice] = "Item updated"
      redirect_to admin_armours_items_path
    else
      flash[:alert] = "Item couldn't be updated"
      render :new
    end
  
  end
  
  def destroy
    @armour.destroy
    @armours = ArmoursItem.all
    flash[:notice] = "Item deleted"
    redirect_to admin_armours_items_path
  end


  private
  def find_armour
    @armour = ArmoursItem.find(params[:id])
  end
end
