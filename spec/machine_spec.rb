require 'machine'
require './spec/coin_stack_spec'

describe 'machine' do

	# it_behaves_like 'a coin stack' 

let(:machine){Machine.new}

	it 'asks the user to stock products' do 
		expect(machine).to receive(:puts).with("Enter a quantity of mars bar to load")
		allow(machine).to receive(:gets).and_return("1")
		machine.load_product(["mars bar", 1.25,	0])
	end

	it 'asks the user to stock coins' do 
		expect(machine).to receive(:puts).with("Enter a quantity of £2 to load")
		allow(machine).to receive(:gets).and_return("1")
		machine.load_coin(["£2", 0])
	end


end