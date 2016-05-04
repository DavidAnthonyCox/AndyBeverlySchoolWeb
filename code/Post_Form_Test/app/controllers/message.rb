class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipient, class_name: 'User', foreign_key: :to_id
  has_many :notifications, as: :event

  after_create :send_notification

private
  def send_notification(message)
    message.notifications.create(user: message.recipient)
  end
end