require 'spec_helper'

describe CollectionRb do
  it 'has a version number' do
    expect(CollectionRb::VERSION).not_to be nil
  end

  describe '.all' do
    let(:collection_rb) { CollectionRb::Collection.new(params)  }
    subject { collection_rb.all }
    describe 'params is Array' do
      context 'in Integer' do
        let(:params) { [1,2,3,4,5] }
        it { is_expected.to eq params  }
      end
      context 'in Object' do
        let(:params) do
          objects = []
          objects << Object.new
          objects << Object.new
          objects
        end
        it { is_expected.to eq params  }
      end
    end
    context 'params is Hash' do
      let(:params) { { a: 1, b: 2, c: 3 } }
      it { is_expected.to eq params }
    end
  end
end
