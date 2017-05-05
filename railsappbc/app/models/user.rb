class User < ApplicationRecord
  validates :firstname, :lastname, :email, presence: true
  validates :firstname, length: { minimum: 2, maximum: 20 , message: "must be between 2 and 20 caracters"}
  validates :lastname, length: { minimum: 2, maximum: 25 , message: "must be between 2 and 25 caracters"}
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_uniqueness_of :email, :case_sensitive => false
  validates :biography, allow_blank: true, length: { minimum: 10, message: "must be bigger than 10"}
  validates :description, allow_blank: true, length: { minimum: 10, message: "must be bigger than 10"}
  validates :comments, allow_blank: true, length: { minimum: 2, message: "must be bigger than 2"}
  validates :price, numericality: { greater_than: 0, message: "must be a positive integer bigger than 0"}
end
