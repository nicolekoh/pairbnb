class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def edit
     @listing=Listing.find(params[:id])
  end

  def show
     @listing = Listing.find(params[:id])
  end

  def index
    @listings = Listing.all
  end

  def create 
    
  @listing = Listing.new(listing_params)
  if @listing.save 
    redirect_to @listing # automatic redirect to show 
  else
    flash[:warning] = "Invalid input"
    render :edit

end 
  end 

  def update
   @listing=Listing.find(params[:id])

      if@listing.update(listing_params)
        redirect_to @listing 
      else 
        render 'edit' #render to listing/edit 
  end 
  end

  def destroy
    @listing=Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path # redirect to index pages 
  end

  private

  def listing_params
    params.require(:listing).permit(:listing_type, :listing_description, :price, :number_guest_accomodate,:country,:city)
  end
end
