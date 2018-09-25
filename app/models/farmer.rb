class Farmer < ApplicationRecord
  #callbacks
  before_save :farmer_status, :farmer_fullname

  #Validations
  validates :firstname, :address, presence: true
  validates :mobile, presence: true, uniqueness: true, numericality: true, length: {minimum: 10, maximum: 10}
  validates :email, presence: true, uniqueness:true

  #Assocciations
  has_many :crops

  #Scopes
  scope :by_active, -> { where(status: "active") }

  def farmer_status
    self.status = "active"
  end

  def farmer_fullname
    self.fullname = "#{self.firstname} #{self.lastname}"
  end

end
