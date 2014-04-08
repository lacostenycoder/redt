require 'spec_helper'

describe Link do
	 
	it { should validate_presence_of(:url) } 
	it { should validate_uniqueness_of(:url) }
	it { should validate_presence_of(:rank) }
	it { should validate_numericality_of(:rank).only_integer }

end
