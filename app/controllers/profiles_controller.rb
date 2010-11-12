class Profile < ActionController::Base
def update_state_select
    states = Region.where(:country_id=>params[:id]).order(:name) unless params[:id].blank?
    render :partial => "states", :locals => { :states => states }

end
def update_city_select
    cities = City.where(:region_id=>params[:id]).order(:name) unless params[:id].blank?
    render :partial => "cities", :locals => { :cities => cities }
end
end
