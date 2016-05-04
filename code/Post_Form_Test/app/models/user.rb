class User < ActiveRecord::Base
  has_many :messages
  has_many :messages_received, class_name: 'Message', foreign_key: :to_id
  has_many :notifications
end