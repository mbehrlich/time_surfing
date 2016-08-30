class User < ActiveRecord::Base

  attr_reader :password

  after_initialize :ensure_session_token

  validates :username, :password_digest, :session_token, :firstname, :lastname, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: { minimum: 8, allow_nil: true }
  validates :gender, inclusion: { in: ["M", "F", "O", nil]}

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    pw_dig = BCrypt::Password.new(self.password_digest)
    pw_dig.is_password?(password)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token
    self.session_token = self.class.generate_session_token
    self.save
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user.nil?
      "username not found"
    elsif user.is_password?(password)
      user
    else
      "Incorrect password"
    end
  end

end
