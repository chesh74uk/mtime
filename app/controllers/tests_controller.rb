class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  
  def index
    @tests = Test.all.order(test_customer: :asc, test_scenario: :asc)
  end

  def new
    @test = Test.new
    @customers = Customer.distinct(:customer_name)
    @scenarios = Scenario.distinct(:scenario_name)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to tests_path, notice: 'Test was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to tests_path, notice: 'Test was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_path, notice: 'Test was successfully deleted.' }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end
  
   # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:test_customer, :test_scenario)
    end
end
