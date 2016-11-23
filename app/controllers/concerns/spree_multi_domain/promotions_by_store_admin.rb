module SpreeMultiDomain::PromotionsByStoreAdmin
  extend ActiveSupport::Concern

  def self.prepended(base)
    base.before_filter :assign_store_id, only: [:create, :update]
    base.prepend(ClassMethods)
  end

  module ClassMethods
    private

    def collection
      @collection = super
      @collection.by_store(current_store)
    end

    def assign_store_id
      params[:promotion][:store_id] = current_store.id
    end
  end
end
