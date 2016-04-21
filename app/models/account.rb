class Account < ActiveRecord::Base
  has_many :events
  belongs_to :branch
end
