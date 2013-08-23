class Admin::MaterialsItemsController < Admin::BaseController

  before_filter :find_material, except: [:index, :new, :create]

  def index
    @materials = MaterialsItem.all
  end

  def new
    @material = MaterialsItem.new
  end

  def create
    @material = MaterialsItem.new(params[:materials_item])
    if @material.save
      @materials = MaterialsItem.all
      flash[:notice] = "New item created"
      redirect_to admin_materials_items_path
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
    if @material.update_attributes(params[:materials_item])
      @materials = MaterialsItem.all
      flash[:notice] = "Item updated"
      redirect_to admin_materials_items_path
    else
      flash[:alert] = "Item couldn't be updated"
      render :edit
    end
  end

  def destroy
    @material.destroy
    flash[:notice] = "Item deleted"
    redirect_to admin_materials_items_path
  end

  private
  def find_material
    @material = MaterialsItem.find(params[:id])
  end
end
