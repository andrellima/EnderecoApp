class Profile < ActionController::Base
def update_state_select
    states = Region.where(:country_id=>params[:id]).order(:name) unless params[:id].blank?
    render :partial => "states", :locals => { :states => states }
end
