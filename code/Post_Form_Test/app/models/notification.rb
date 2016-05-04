class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :event, polymorphic: true
end