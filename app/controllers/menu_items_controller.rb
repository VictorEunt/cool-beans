class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new, :edit, :create, :update, :destroy]

  respond_to :html

  def index
    @menu_items = MenuItem.all.order('item_rank ASC')
    @menu_photos = MenuPhoto.all

    respond_to do |format|
      format.html  
    end
  end
  
  def show
    respond_with(@menu_item)
  end

  def new
    @menu_item = MenuItem.new
    respond_with(@menu_item)
  end

  def edit
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      redirect_to manager_path, notice: 'Your menu item was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
   if @menu_item.update
      redirect_to manager_path, notice: 'Your menu item was saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @menu_item.destroy
    redirect_to manager_path
  end

  private
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:menu_section, :name, :description, :price, :extra_one, :extra_one_price, :extra_two, :extra_two_price, :extra_three, :extra_three_price, :item_rank)
    end
end
