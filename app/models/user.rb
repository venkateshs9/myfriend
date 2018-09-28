class User < ApplicationRecord

  #callbacks
  before_save :user_status, :user_fullname, :user_username

  #Validations
  validates :firstname, :address, presence: true
  validates :mobile, presence: true, uniqueness: true, numericality: true, length: {minimum: 10, maximum: 10}
  validates :email, presence: true, uniqueness:true

  #Assocciations
  has_many :crops

  #Scopes
  scope :by_active, -> { where(status: "active") }

  def user_status
    self.status = "active"
  end

  def user_fullname
    self.fullname = "#{self.firstname} #{self.lastname}"
  end

  def user_username
  	self.username = self.email
  end

end
