class Nice_farm_where_dogs_can_play
    attr_accessor :puparray, :puppy, :purchasecount, :purchaserequest, :soldpups
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
      @puparray.select  do |value|
        
        
        if @purchasecount <1 && value[:breed]==breed_you_want
          @purchasecount+=1
          @purchaserequest.push({
            :breed => breed_you_want,
            :id => yourname,
            :cost=> value[:cost],
            :available => true})
          

        end
      end
    end  
    end

    def approval(id)
      @id=id
      @purchaserequest.each do |a|
        if a[:id]==id
          a[:available]=false
        end
      end
    end

    def stats
      @soldpups=soldpups
      soldpups= []
      purchaserequest.each do |n|
        if n[:available]==false
          soldpups.push(n)
        end
      end

      
      puts "We have birthed #{@puparray.length} puppies and found homes for #{soldpups.length} of them"
      
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
