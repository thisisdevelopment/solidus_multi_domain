require 'spec_helper'

describe Spree::Promotion do
  let(:store) { FactoryGirl.create(:store) }
  let(:store2) { FactoryGirl.create(:store) }
  let(:promotion) { FactoryGirl.create(:promotion, store: store) }
  let(:promotion2) { FactoryGirl.create(:promotion, store: store2) }

  it 'should correctly find promotions by store' do
    promotions_by_store = Spree::Promotion.by_store(store)

    expect(promotions_by_store).to include(promotion)
    expect(promotions_by_store).to_not include(promotion2)
  end
end
