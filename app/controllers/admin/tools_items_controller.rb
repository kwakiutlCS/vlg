class Admin::ToolsItemsController < Admin::BaseController
  before_filter :find_tool, except: [:index, :new, :create]

  def index
    @tools = ToolsItem.all
  end

  def new
    @tool = ToolsItem.new
  end

  def create
    @tool = ToolsItem.new(params[:tools_item])
    
    if @tool.save
      @tools = ToolsItem.all
      flash[:notice] = "New item created"
      redirect_to admin_tools_items_path
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
    if @tool.update_attributes(params[:tools_item])
      @tools = ToolsItem.all
      flash[:notice] = "Item updated"
      redirect_to admin_tools_items_path
    else
      flash[:alert] = "Item couldn't be updated"
      render :edit
    end
  end

  def destroy
    @tool.destroy
    flash[:notice] = "Item deleted"
    redirect_to admin_tools_items_path
  end


  private
  def find_tool
    @tool = ToolsItem.find(params[:id])
  end
end
