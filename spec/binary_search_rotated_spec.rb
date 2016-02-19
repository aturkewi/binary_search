require_relative 'spec_helper'


describe "rotated binary sort methods" do
  let(:array) {[11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
  let(:array_right) {[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]}
  describe "find_pivot" do
    it 'correctly returns pivot location in left half of array' do
      expect(find_pivot(array)).to eq(2)
    end

    it 'correctly finds pivot location in right half of array' do
      expect(find_pivot(array_right)).to eq(10)
    end

    it "returns 'No  pivot' if the array is not rotated" do
      sorted_array=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
      expect(find_pivot(sorted_array)).to eq('No pivot')
    end
  end

  describe "binary_search" do
    it "returns the value for a pivoted number" do
      expect(binary_search(array,12)).to eq(1)
    end

    it 'returns the value for a non-pivoted number' do
      expect(binary_search(array,8)).to eq(10)
    end

    it "returns 'Not found' if the number is not in the array" do
      expect(binary_search(array,14)).to eq('Not found')
    end

    it 'returns correctly for first in array' do
      expect(binary_search(array,11)).to eq(0)
    end

    it 'returns correctly for pivot' do
      expect(binary_search(array,13)).to eq(2)
    end

    it 'returns correctly for number after pivot' do
      expect(binary_search(array,1)).to eq(3)
    end

    it 'returns correctly for last in array' do
      expect(binary_search(array,10)).to eq(12)
    end

  end

end
