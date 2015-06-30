class Title < ActiveRecord::Base
  has_many :roles
  has_many :figures, through: :roles
end