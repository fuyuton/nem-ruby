require 'spec_helper'

describe Nem::Model::TransferTransaction do

  describe '.new_from_transaction_meta_data_pair' do
    let(:hash) {
      {
        "meta": {
          "innerHash": {},
          "id": 145690,
          "hash": {
            "data": '905556c099ed558a6ff03ecfab92b93b2f662df7da6ca936a4620032f5bdb2c9'
          },
          "height": 1212284
        },
        "transaction": {
          "timeStamp": 83498191,
          "amount": 0,
          "signature": 'ea247df2a55e501f5645a8cd1f303ee1d33e467ceec417bb23c8d7386693a460f2621b10e9e43e8e81d0252f64deb0c7c080a5930116382cafd3708124576009',
          "fee": 300000,
          "recipient": 'TBJM3TYYKA7BQVVANQGAGBH4R5CGC43LR6GED4UG',
          "type": 257,
          "deadline": 83501791,
          "message": {
            "payload": '06c32109408753871bc60132f4d62e02a18ac079bb12186502334fe4f262daf90e19e583d9f3a282c4f68c3e478aa77f7ce2b623700dc1ada7f80af59eaa8c5951a5765505af4a145d5269dd1a5a620355169ff92f8b727629b960d4621cfa47ae81d3422674e11b912c93c85ee6b4206c96fed6840f22ceb20aea1ab50d61a7',
            "type": 2
          },
          "version": -1744830463,
          "signer": '43637c03a21c90f1a72c3b718e1a6985a815860412fa14c7fbed6c5e1a5f6206'
        }
      }
    }

    subject { described_class.new_from_transaction_meta_data_pair(hash) }

    it { expect(subject).to be_a described_class }
    it { expect(subject.type).to eq 0x0101 }
  end
end
