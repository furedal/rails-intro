class Api::V1::SuppliersController < Api::V1::BaseController
    def index
        render json: Supplier.all
    end
end