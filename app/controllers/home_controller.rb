class HomeController < ApplicationController
  def index
    access_token = params[:access_token]
    uri = URI.parse("https://api.amazon.com/user/profile")
    req = Net::HTTP::Get.new(uri.request_uri)
    req['Authorization'] = "bearer " + access_token
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    response = http.request(req)
    decode = JSON.parse(response.body)
    @user = User.find_by_email(decode['email'])
    @user = User.create({:email => decode['email'], :full_name => decode['name'], :amazon_id => decode['user_id'], :password => "123456789", :password_confirmation => "123456789" }) if @user.nil?
  end
end
