class ApplicationMailer < ActionMailer::Base
  # default from: 'tuf.umtshayelo.foundation@gmail.com' # 
  default from: ENV["ADMIN_EMAIL"]
end
