class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending" 
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def sender
    BankAccount  
  end
  
#   def execute_transaction
#     if valid?
#       @status = "complete"
#     else
#       "Transaction rejected. Please check your account balance."
#   end
# end
  
end
