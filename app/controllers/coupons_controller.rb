class CouponsController < ApplicationController

    def show
        @coupon = Coupon.find(params[:id])
    end

    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
        render :new
    end

    def create
        @coupon = Coupon.create(coup_params)
        redirect_to coupon_path(@coupon)
    end

    private
    def coup_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end
