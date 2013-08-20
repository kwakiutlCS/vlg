class Admin::ClothesItemsController < Admin::BaseController

  def index
    @clothes = ClothesItem.all
  end


  def new
    @cloth = ClothesItem.new
  end


  def create
    @cloth = ClothesItem.new(params[:clothes_item])
    if @cloth.save
      @clothes = ClothesItem.all
      flash[:notice] = "New item created"
      redirect_to admin_clothes_items_path
    else
      flash[:alert] = "Item couldn't be created"
      render :new
    end
  end

  def edit
    @cloth = ClothesItem.find(params[:id])
  end

  def update
    @cloth = ClothesItem.find(params[:id])
    if @cloth.update_attributes(params[:clothes_item])
      @clothes = ClothesItem.all
      flash[:notice] = "Item updated"
      redirect_to admin_clothes_items_path
    else
      flash[:alert] = "Item couldn't be updated"
      render :edit
    end
  end

  def show
    @cloth = ClothesItem.find(params[:id])
  end

  def destroy
    @clothes = ClothesItem.all
    @cloth = ClothesItem.find(params[:id])
    @cloth.destroy
    flash[:notice] = "Item deleted"
    redirect_to admin_clothes_items_path
    
  end


end
