# frozen_string_literal: true

describe Sort::QuickSort do
  subject(:sorted_array) { described_class.sort(array) }

  let(:array) { [1, 9, 5, 4, 2, 15, 12, 5, -5, 30, 8, 17, 16, 15, 12, 24] }
  let(:expected_array) { [-5, 1, 2, 4, 5, 5, 8, 9, 12, 12, 15, 15, 16, 17, 24, 30] }

  it 'returns sorted array' do
    expect(sorted_array).to eq(expected_array)
    expect(sorted_array - expected_array).to be_empty
  end
end
