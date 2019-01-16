class Transfer
  attr_reader :sender, :receiver
  
  def initialize(sender, receiver)
    @sender, @receiver = sender, receiver
  end
end
