require 'bike'

describe Bike do
 it { is_expected.to respond_to :working?}

 it { is_expected.to respond_to :broken }

 describe '#broken' do
   it 'returns as broken' do
     expect(subject.broken).to eq true
   end
 end

end
