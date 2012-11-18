require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :bio, :email, :is_player, :name, :username, :tel, :url, :weibo, :password, :hashed_password, :password_confirmation
  
  has_many :play_player_xrefs
  has_many :plays, :through => :play_player_xrefs

  validates :username, :presence => true, :uniqueness => true

  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password

  validate :password_must_be_present

  class << self
    def authenticate(username, password)
      if user = find_by_username(username)
        if user.hashed_password == encrypt_password(password, user.seed)
          user
        end
      end
    end

    def encrypt_password(password, seed)
      Digest::SHA2.hexdigest(password + "wibble" + seed)
    end
  end

  # 'password' is a virtual attribute
  def password=(password)
    @password = password
    if password.present?
      generate_seed
      self.hashed_password = self.class.encrypt_password(password, seed)
    end
  end
  
  before_destroy :donot_destroy_gcd0318
  def donot_destroy_gcd0318
    raise "Can't destroy gcd0318" if self.username == 'gcd0318'
  end

  after_destroy :ensure_an_admin_remains

  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end    
  
  private
    def password_must_be_present
      errors.add(:password, "Missing password" ) unless hashed_password.present?
    end

    def generate_seed
      self.seed = self.object_id.to_s + rand.to_s
    end
end
