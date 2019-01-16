class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender, @receiver = sender, receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if sender.valid? && @status == "pending" && @sender.balance > @amount
      @receiver.deposit(@amount)
      @sender.deposit(-@amount)
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
    
      
  end
end
