
#attr_accessor
#float and integer

class CashRegister
    attr_accessor :items, :discount, :total, :last_transaction_amount
    def initialize(discount=0)
        self.discount = discount
        self.total = 0
        self.items = []

    end


    def add_item(title, amount, quantity=1)
        self.total += amount * quantity
        quantity.times do
          items << title
        end
        self.last_transaction_amount = amount * quantity
      end

def apply_discount
    if discount != 0
        #float and integers
        self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
end



def void_last_transaction
    self.total = self.total - self.last_transaction_amount
end

end

