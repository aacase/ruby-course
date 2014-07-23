class Nice_farm_where_dogs_can_play
    attr_accessor :puparray, :puppy, :purchasecount, :purchaserequest
    def initialize
      @puparray=puparray
      @puparray=[]
      @purchaserequest=[]
    end
    def add_to_inventory(puppy)
        @puppy=puppy
        dogcost=[{
          :breed => 'boxer',
          :cost => 200},
          {:breed => 'scotty',
            :cost => 300},
          {:breed => 'husky',
            :cost => 500}
          ]
        dogcost.each do |dogtype|
          if dogtype[:breed]==@puppy.breed
            @puparray.push({
          :breed => dogtype[:breed],
          :available => true,
          :cost => dogtype[:cost]
          })      
          end
          # puts 'A #{@breed} was sent to the farm to wait for a nice forever home!'
        end
    def request(yourname, breed_you_want)
      @purchasecount=purchasecount
      @purchasecount=0
      @breed_you_want=breed_you_want
      @yourname=yourname
      @puparray.each  do |value|
        
        if purchasecount <1 && value[:breed]=breed_you_want
          @purchaserequest.push({
            :breed => value[:breed],
            :id => yourname,
            :cost=> value[:cost]})
          @purchasecount +=1
        end
      end
    end  
    end
end

class Puppy
  attr_reader :breed
  def initialize(breed)
    @breed=breed
  end
end


# class Purchase
#   attr_reader :doggy, :purchase_id,:purchasecount
#   def initialize
#       @purchasecount=purchasecount
      

#   end
#   def request(yourname, breed_you_want)
#     @purchasecount=0
#     @breed_you_want=breed_you_want
#     @yourname=yourname
#     @puparray.each  do |value|
      
#       if value[:breed]=breed_you_want && purchasecount <1
#         @purchaserequest.push({
#           :breed => value[:breed],
#           :id => yourname,
#           :cost=> value[:cost]})
#         @purchasecount +=1
#       end
#     end
#   end
# end

# public
# def add_to_inventory
#     dogcost=[{
#       :breed => 'boxer',
#       :cost => 200},
#       {:breed => 'scotty',
#         :cost => 300},
#       {:breed => 'husky',
#         :cost => 500}
#       ]
#     dogcost.each do |dog|
#       if dog[:breed]==breed
#         @@puparray.push({
#       :breed => @breed,
#       :available => true,
#       :cost => dog[:cost]
#       })      
#       end
#     end
#     return @@puparray
# end

# def approve_purchase
# @puparray=[]
# @purchaserequest=[]
