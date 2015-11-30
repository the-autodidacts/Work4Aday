class Jobposting < ActiveRecord::Base
  validates  :location, presence: true
  validates  :description, presence: true
  validates  :rate_of_pay, presence: true
  validates  :type_of_pay, presence: true
  validates  :user, presence: true
  belongs_to :user
  has_many :messages, through: :jobpostings
end
