

require "./breeder.rb"

describe 'Puppies' do

 before do
   @test = Puppy.new('scotty')
 end

  it 'creates a new puppy with a breed'do
   
    expect(@test.breed).to eq('scotty')
  end
  
  
end