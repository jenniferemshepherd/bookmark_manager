class User
  include DataMapper::Resource
  #
  # has n, :links, :through => Resource
  # @user_count

  # def self.new
  #   @user_count += 1
  # end
  #
  # def self.count
  #   @user_count
  # end

  property :id, Serial
  property :email, String
  property :password, String

end
