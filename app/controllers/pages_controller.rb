require 'twilio-ruby'

class PagesController < ApplicationController
  def home
    
  end

  def sms
      account_sid = 'ACf3e45585248ae7baff5636adf7599373' # Your Account SID from www.twilio.com/console
      auth_token = 'a271a0291f8170dfb3f312533de707e4'
      @client = Twilio::REST::Client.new account_sid, auth_token
      message = @client.account.messages.create(:body => params[:message],
        :to => params[:number],    # Replace with your phone number
        :from => '+14012277024')  # Replace with your Twilio number
      puts message.sid
  end
end