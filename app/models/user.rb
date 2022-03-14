# email;string
# password_digest:string
#
#only intracts with the below
# password:string virtual
# password_congiguration:string cirtual
class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message:"must be a valid email address"}
end
