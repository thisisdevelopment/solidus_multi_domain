require 'spec_helper'

describe Spree::Promotion do
  before(:each) do
    @store = FactoryGirl.create(:store)
    store2 = FactoryGirl.create(:store)

    @promotion = FactoryGirl.create(:promotion, store: @store)
    @promotion2 = FactoryGirl.create(:promotion, store: store2)
  end

  it 'should correctly find promotions by store' do
    promotions_by_store = Spree::Promotion.by_store(@store)

    expect(promotions_by_store).to include(@promotion)
    expect(promotions_by_store).to_not include(@promotion2)
  end
end
