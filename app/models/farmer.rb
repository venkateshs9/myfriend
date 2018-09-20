class Farmer < ApplicationRecord
  #callbacks
  before_save :farmer_status

  #Validations
  validates :firstname, :email, :mobile, :address, presence: true

  #Assocciations
  has_many :crops

  #Scopes
  scope :by_active, -> { where(status: "active") }

  def farmer_status
    self.status = "active"
  end

end
