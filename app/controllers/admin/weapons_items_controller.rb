class Admin::WeaponsItemsController < Admin::BaseController

  before_filter :find_weapon, except: [:index, :create, :new]

  def index
    @weapons = WeaponsItem.all
  end

  def new
    @weapon = WeaponsItem.new
  end

  def create
    @weapon = WeaponsItem.new(params[:weapons_item])
    
    if @weapon.save
      @weapons = WeaponsItem.all
      flash[:notice] = "New item created"
      redirect_to admin_weapons_items_path
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
    if @weapon.update_attributes(params[:weapons_item])
      flash[:notice] = "Item updated"
      @weapons = WeaponsItem.all
      redirect_to admin_weapons_items_path
    else
      flash[:alert] = "Item couldn't be updated"
      render :edit
    end
  end

  def destroy
    @weapon.destroy
    flash[:notice] = "Item deleted"
    redirect_to admin_weapons_items_path
  end



  private
  def find_weapon
    @weapon = WeaponsItem.find(params[:id])
  end
end
