require 'rails_helper'

RSpec.describe Album, type: :model do
	describe 'Salvando' do
	  context 'Quando todos os dados são ' do

	  	it "válidos" do
	  		album = build(:album)
	  		expect(album).to be_valid
	  	 end

	  	 it "inválidos" do
	  	 	album = build(:album,name:nil)
	  	 	expect(album).to_not be_valid
	  	  end

	  end

	end

	describe 'Testando has_many' do
	  	it { should have_many(:players) }
		it { should have_many(:players).through(:players_albums) }

	end
	
end
