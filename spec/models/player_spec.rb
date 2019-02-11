require 'rails_helper'

RSpec.describe Player, type: :model do
	describe 'Salvando' do
	  context 'Quando todos os dados são ' do

	  	it "válidos" do
	  		player = build(:player)
	  		expect(player).to be_valid
	  	 end

	  	 it "inválidos" do
	  	 	player = build(:player,name:nil)
	  	 	expect(player).to_not be_valid
	  	  end

	  end

	end

	describe 'Testando has_many' do
		context 'testando se existe relacionamento' do
		  	it { should have_many(:albums) }
		  	it { should have_many(:albums).through(:players_albums) }
		end


	end

	
end
