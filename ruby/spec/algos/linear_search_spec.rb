# frozen_string_literal: true

describe LinearSearch do
  subject(:found_element) { described_class.call(array, element) }

  let(:array) { (1..100).to_a }
  let(:element) { rand(1..100) }
  let(:expected_position) { element - 1 }

  it 'returns correct element position' do
    expect(found_element).to eq(expected_position)
  end

  context 'when element does not exist in array' do
    let(:element) { 0 }

    it { is_expected.to eq(nil) }
  end

  context 'when array is empty' do
    let(:array) { [] }

    it { is_expected.to eq(nil) }
  end
end
