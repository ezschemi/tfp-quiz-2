class VisitorsController < ApplicationController

  def index
    @visitors = Visitor.all
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)

    @visitor.save
    redirect_to  root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitor_params
      params.require(:visitor).permit(:name, :country)
    end
end
