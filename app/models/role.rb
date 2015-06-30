class Role < ActiveRecord::Base
  belongs_to :figure
  belongs_to :title
end