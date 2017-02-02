class Notification < ApplicationMailer

   default from: ' dharmjeet <dharmjeetkr18@gmail.com>'  # this is sender name nd id


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.sending.subject
  #
  #def sending
   # @greeting = "Hi hw r you"

    # mail to: "to@example.org", subject: "from cbi crime branch mumbai"

    #receiver mail id
 

  def sending(product, current_user_id)
    @user = User.find(current_user_id)
   @product= product
	  mail to: @user.email,  subject: "from indian railway "
 
  end
end
