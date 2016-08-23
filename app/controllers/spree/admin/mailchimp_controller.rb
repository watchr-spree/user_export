# See spree_backend gem's Spree::Admin::GeneralSettingsController
module Spree
  module Admin
    class MailchimpController < Spree::Admin::BaseController
      
      include Spree::Backend::Callbacks

      def edit
        end

      def update
      @ucsv = Array.new
      case params[:state]
      
        when "1"
         @name = "all_users.csv"
         @users = Spree::User.all
        
        when "2"
         @name = "dont_active_users.csv"
         @users = Spree::User.all
         @users.each do |user|
           if Spree::Order.where(user_id: user.id, state: "confirm").count == 0 && Seller.where(user_id: user.id).count == 0
           @ucsv << user
           end
       	@users = @ucsv
		end

        when "3"
         @name = "buyer_users.csv"
         @users = Spree::User.all
         @users.each do |user|
           if Spree::Order.where(user_id: user.id, state: "confirm").count > 0 && Seller.where(user_id: user.id).count == 0
           @ucsv << user
           end
       	 @users = @ucsv
		end
         
        when "4"
         @name = "seller_users.csv"
         @users = Spree::User.all
         @users.each do |user|
           if Spree::Order.where(user_id: user.id, state: "confirm").count == 0 && Seller.where(user_id: user.id).count > 0
           @ucsv << user
           end
       	 @users = @ucsv
		end
         
        when "5"
         @name = "no_active_last_#{params[:user][:xday]}_day_ago.csv"
         @users = Spree::User.all
         
         
         
         @users.each do |user|
             order = Spree::Order.where(user_id: user.id, state: "confirm", :updated_at => params[:user][:xday].to_i.days.ago..Time.now)
             seller = Seller.where(user_id: user.id, :updated_at => params[:user][:xday].to_i.days.ago..Time.now)          
                 if order.count > 0 || seller.count > 0

                  @ucsv << user                  			
                 end
        	 @users = @ucsv
         end
      end
      

    csv_string = CSV.generate do |csv|
         csv << ["id", "name", "last_name", "email",  "adres", "adres2", "postcode", "country", "phone", "country", "full_adress"]
         @users.each do |user|
           csv << [user.id, user.last_name, user.email,  user.adres, user.adres2, user.postcode, user.country, user.phone, user.country, user.full_adress]
         end
    end         
  
   send_data csv_string,
   :type => 'text/csv; charset=iso-8859-1; header=present',
   :disposition => "attachment; filename=#{@name}" 
               
      end
    end
  end
end
