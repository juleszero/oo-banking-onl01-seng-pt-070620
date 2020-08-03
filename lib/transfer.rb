require 'pry'
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
  
  def execute_transaction
    #binding.pry
    if valid?
      new_bal = @sender.balance - @amount
      new_bal
    elsif sender.status == "closed"
      self.status = "rejected"
    elsif sender.balance < @amount  
      "Transaction rejected. Please check your account balance."
  end
  new_bal
end
  
  def reverse_transfer
    self.execute_transaction 
  end
end
