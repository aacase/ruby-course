@@puparray=[]
@@purchaserequest=[]






class Puppy
  attr_reader :breed
  def initialize(breed)
    @breed=breed
  end
end


class Purchase
  attr_reader :doggy, :purchase_id
  def initialize
    
  end
  def request(yourname, breed_you_want)
    @breed_you_want=breed_you_want
    @@puparray.each do |value|
      
      if value[:breed]=breed_you_want
        @@purchaserequest.push({
          :breed => value[:breed],
          :id => yourname,
          :cost=> value[:cost]})
      
      else
        return "We don't have that kind of dog here. Sorry"
      end
    end
  end
end

public
def add_to_inventory
    dogcost=[{
      :breed => 'boxer',
      :cost => 200},
      {:breed => 'scotty',
        :cost => 300},
      {:breed => 'husky',
        :cost => 500}
      ]
    dogcost.each do |dog|
      if dog[:breed]==breed
        @@puparray.push({
      :breed => @breed,
      :available => true,
      :cost => dog[:cost]
      })      
      end
    end
    return @@puparray
end

def approve_purchase
