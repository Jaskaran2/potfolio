class PortfolliosController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]

  def index
    @portfolios = Portfollio.all
  end

  def show
  end

  def new
    @portfolio = Portfollio.new
  end

  def edit
  end

  def create
    @portfolio = Portfollio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfollios_path, notice: "Portolio was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Portfolio was successfully destroyed." }
    end
  end

  private
    def set_blog
      @portfolio = Portfollio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_params
      params.require(:portfollio).permit(:title,
        :subtitle,
        :body,
        :main_image,
        :thumb_image
      )
    end
end
