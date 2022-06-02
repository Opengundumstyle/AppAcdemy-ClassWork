class User < ApplicationRecord
    validates :email, :session_token, presence:true, uniqueness: true
    validates :password_digest, presence:true
    validates :password, length:{ minimum:6 }, allow_nil:true, presence: {message: 'Password can\'t be blank'}

    attr_reader :password
    after_initialize :ensure_session_token # before_validation: ensure_session_token
    after_initialize :set_activation_token
   
    def self.find_by_credentials(email,password)
         user = User.find_by(email: email)
         return nil if user.nil?
         user.is_password?(password) ? user : nil
         
    end

    def self.generate_session_token
         SecureRandom::urlsafe_base64(16)
    end

    def set_activation_token
        self.activation_token = generate_unique_activation_token
    end

    def reset_session_token!
       self.session_token = self.class.generate_session_token
       self.save!
       self.session_token  
    end

    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?
         BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def generate_unique_session_token
        token = SecureRandom.urlsafe_base64(16)
    
        ##
        # Just in case there is a session_token conflict, make sure
        # not to throw a validation error at the user!
        ##
        while self.class.exists?(session_token: token)
          token = SecureRandom.urlsafe_base64(16)
        end
    
        token
      end

end
