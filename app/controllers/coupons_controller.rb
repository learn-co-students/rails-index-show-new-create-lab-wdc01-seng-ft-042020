class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
        render "show"
    end

    def new
    end

    def create
        @coup = Coupon.new
        @coup.coupon_code = params[:coupon][:coupon_code]
        @coup.store = params[:coupon][:store]
        @coup.save
        redirect_to coupon_path(@coup)
    end

    def destroy
        @couper = Coupon.find(params[:id])
        @couper.destroy_all
        redirect_to coupon_path
    end

end