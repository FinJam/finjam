class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: %i(person organization enterprise)

  has_one :person
  has_one :organization
  has_one :enterprise

  after_create :create_role

  protected

  def create_role
    create_person if person?
  end
end
