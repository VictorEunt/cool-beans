class PagesController < ApplicationController
  def home
  end
  def about
  end
  def menu
  end
  def brunch
    @menu_items = MenuItem.all.order('item_rank ASC')
    @menu_photos = MenuPhoto.all

    respond_to do |format|
      format.html 
    end
  end
  def gallery
  end
  def contact
    @hours = Hour.all
    respond_to do |format|
      format.html
    end
  end
  def specials
    @menu_items = MenuItem.all.order('item_rank ASC')
    @menu_photos = MenuPhoto.all

    respond_to do |format|
      format.html 
    end
  end
end
