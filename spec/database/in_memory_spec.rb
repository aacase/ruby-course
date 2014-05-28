require 'spec_helper'

describe DoubleDog::Database::InMemory do
  let(:db) { described_class.new }

  it "creates an item" do
    item = db.create_item(:name => 'hot dog', :price => 5)
    expect(item).to be_a DoubleDog::Item

    expect(item.id).to_not be_nil
    expect(item.name).to eq 'hot dog'
    expect(item.price).to eq 5
  end

  it "retrieves an item" do
    item = db.create_item(:name => 'hot dog', :price => 5)

    retrieved_item = db.get_item(item.id)
    expect(retrieved_item).to be_a DoubleDog::Item
    expect(retrieved_item.name).to eq 'hot dog'
    expect(retrieved_item.price).to eq 5
  end

  it "grabs all items" do
    db.create_item(:name => 'fries', :price => 3)
    db.create_item(:name => 'pickle', :price => 4)
    db.create_item(:name => 'potato', :price => 8)

    items = db.all_items
    expect(items.count).to eq 3
    expect(items.first).to be_a DoubleDog::Item

    expect(items.map &:name).to include('fries', 'pickle', 'potato')
    expect(items.map &:price).to include(3, 4, 8)
  end
end
