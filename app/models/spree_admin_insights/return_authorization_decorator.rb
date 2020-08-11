module SpreeAdminInsights
  module ReturnAuthorizationDecorator
    def self.prepended(base)
      base.has_many :variants, through: :inventory_units
      base.has_many :products, through: :variants
    end
  end
end

::Spree::ReturnAuthorization.prepend(::SpreeAdminInsights::ReturnAuthorizationDecorator)
