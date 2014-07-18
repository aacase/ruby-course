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


describe "Exercise 1" do
    it "returns the number of elements in array" do
      array=[1,2,3,4,5]
      result= Exercises.ex1(array)
      expect(result).to eq(5)
  end
end

describe "Exercise 2" do
    it "returns the number of elements in array" do
      array=[1,2,3,4,5]
      result= Exercises.ex2(array)
      expect(result).to eq(2)
    end
    it "retuns false if array has less than 2 elements"do
      array=[1]
      result= Exercises.ex2(array)
      expect(result).to eq(false)
    end
end

describe "Exercise 3" do
  it "Returns the sum of the given array of numbers" do
    array=[1,2,3,4,5]
    result= Exercises.ex3(array)
    expect(result).to eq(15)
  end
end

describe "Exercise 4" do
  it "Returns max value of an array" do
    array=[5,4,2,63,6,8]
    result= Exercises.ex4(array)
    expect(result).to eq(63)
  end
end

describe "Exercise 5"do
  it "Iterates through an array and puts each element" do
    array=[1,2,3]
    expect(STDOUT).to receive(:puts).with(1)
    expect(STDOUT).to receive(:puts).with(2)
    expect(STDOUT).to receive(:puts).with(3)
    Exercises.ex5(array)
  end
end



