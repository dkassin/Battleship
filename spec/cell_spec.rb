 require './lib/ship'
 require './lib/cell'

 describe Cell do
   it 'exists' do
     cell = Cell.new("B4")
     expect(cell).to be_a Cell
   end
end