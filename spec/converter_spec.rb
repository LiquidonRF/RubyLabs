require_relative '../lib/degrees_converter'
require 'rspec'

RSpec.describe DegreesConverter do
  describe '.converter' do
    context 'From C to K' do
      it { expect(DegreesConverter.convert(15, 'C', 'K')).to eq 288 }
    end

    context 'From C to F' do
      it { expect(DegreesConverter.convert(15, 'C', 'F')).to eq 59 }
    end

    context 'From K to C' do
      it { expect(DegreesConverter.convert(15, 'K', 'C')).to eq(-258) }
    end

    context 'From K to F' do
      it { expect(DegreesConverter.convert(15, 'K', 'F')).to eq(-433) }
    end

    context 'From F to C' do
      it { expect(DegreesConverter.convert(15, 'F', 'C')).to eq(-10) }
    end

    context 'From F to K' do
      it { expect(DegreesConverter.convert(15, 'F', 'K')).to eq 263 }
    end
  end
end
