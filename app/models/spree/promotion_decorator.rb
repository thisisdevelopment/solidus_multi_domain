Spree::Promotion.class_eval do
  belongs_to :store
  scope :by_store, lambda { |store| where(store: [store, nil]) }
end
