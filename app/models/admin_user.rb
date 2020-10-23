class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :registerable, :omniauthable
  
  has_many :employees
  def display_name
    "#{email}"
  end
  has_many :customers
  def to_s
    "#{email}"
  end

  # SCOPES
  scope :filter_by_email, -> (email) { where email: email}

  # Check if user is an employee
  #user = @admin_user 
  

  #user_email = params[:email]
  #employees = Employee.all

  #p employees
  #employees = employees.where(email: user_email)
  #p employees


  #if employees.size > 0


  #end
end
