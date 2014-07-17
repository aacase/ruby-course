require "./exercises.rb"




describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if string = wishes" do
    result = Exercises.ex0("wishes")
    expect(result).to eq('nope')
  end
end


#   describe "Exercise 1" do
#     xit "returns the number of elements in array"
#   end
# end



