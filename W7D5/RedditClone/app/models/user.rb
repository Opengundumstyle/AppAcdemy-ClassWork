class User < ApplicationRecord
     validates :session_token,:password_digest,presence:true
     validates :username, :email, presence:true, uniqueness:true
     validates :password, length: {minimum:6 ,allow_nil:true}
      
     attr_reader :password
     after_initialize :ensure_session_token!
     
     def self.find_by_credential(username,password)
         user = User.find_by(username: username)
          if user
             return user  if user.is_password?(password)
          end
          nil
     end

     def password=(password)
         @password = password
         self.password_digest = BCrypt::Password.create(password)
     end

     def is_password?(password)
          passwordObj = BCrypt::Password.new(self.password_digest)
          passwordObj.is_password?(password)
     end

     def reset_session_token!
            self.session_token = SecureRandom::urlsafe_base64(16)
            self.save!
            self.session_token
     end

     private
     def ensure_session_token!
             self.session_token ||= SecureRandom::urlsafe_base64(16)
     end
 
      

end
