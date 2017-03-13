class User < ApplicationRecord
  has_secure_password

  def self.from_token_request request
    phone = request.params["auth"] && request.params["auth"]["phone"]
    self.find_by_phone(phone)
  end

end
