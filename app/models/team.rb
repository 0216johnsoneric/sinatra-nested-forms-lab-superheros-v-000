# class Team
#   attr_reader :name, :motto
#
#   def initialize(params)
#     @name = params[:name]
#     @motto = params[:motto]
#   end
# end
class Team
  attr_accessor :name, :motto

  @@all = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
