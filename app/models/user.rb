class User < ApplicationRecord
  include TheRole::Api::User

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me
  # User accessible fields
  # attr_accessible :name, :company, :address

  # When we uncomment this string - test should give fail
  # just for example, do not uncomment it
  # attr_accessible :some_protected_field

  # RELATIONS
  has_many :pages
end
