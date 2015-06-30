class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :roles
  has_many :titles, through: :roles
end