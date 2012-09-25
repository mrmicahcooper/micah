class Admin < ActiveRecord::Base
  include Authem::User

  attr_accessible :body, :published

end
