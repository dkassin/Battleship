require './lib/board'
require './lib/cell'
require './lib/ship'
require 'pry'

RSpec.describe Board do
  it 'exists' do
    board = Board.new

    expect(board).to be_an_instance_of(Board)
  end

  #Should we test for @coordinates

  it 'keeps a dictionary of cells' do
    board = Board.new

    expect(board.cells.length).to eq(16)
    expect(board.cells).to be_a(Hash)
  end

  it 'can check if coordinate is valid' do
    board = Board.new

    expect(board.valid_coordinate?("A1")).to be(true)
    expect(board.valid_coordinate?("D4")).to be(true)
    expect(board.valid_coordinate?("A5")).to be(false)
    expect(board.valid_coordinate?("E1")).to be(false)
    expect(board.valid_coordinate?("A22")).to be(false)
  end
end