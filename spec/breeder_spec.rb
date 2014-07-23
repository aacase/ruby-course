

require "./breeder.rb"

describe 'Puppies' do

 before do
   @test = Puppies.new
 end

  it 'creates an empty array on initialize'do
    result=@test.puparray
    expect(result.length).to eq(0)
  end
  
  
end