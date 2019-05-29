class CasaAbrigo < ActiveRecord::Base
    validates :nome, presence: true
    validates :documento, presence: true
    validates :endereco, presence: true
    validates :telefone, presence: true
    VALID_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 70}, format: { with: VALID_EMAIL}, uniqueness: {case_sensitive: false}
end
