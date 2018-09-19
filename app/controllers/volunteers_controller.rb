class VolunteersController < ApplicationController
    access all: [:show, :index, :new, :propose], site_admin: :all
    before_action :set_volunteer, only: [:show, :edit, :update, :destroy]
    layout "application"

    # def index
    #
    # end


    def show

    end

    # GET /blogs/new

    def propose
      @volunteer = Volunteer.new
    end

    def new
      @volunteer = Volunteer.new
      @project = Project.all
    end

    # GET /blogs/1/edit
    def edit
    end


    def create
      @volunteer = Volunteer.new(volunteer_params)
      @project = Project.all
      respond_to do |format|
        if @volunteer.save
          format.html { redirect_to @volunteer, notice: 'Volunteer Application was successfully submitted.' }
          format.json { render :show, status: :created, location: @volunteer }
        else
          format.html { render :new }
          format.json { render json: @volunteer.errors, status: :unprocessable_entity }
        end
      end
    end


    def update
      respond_to do |format|
        if @volunteer.update(volunteer_params)
          format.html { redirect_to @volunteer, notice: 'Volunteer Application was successfully updated.' }
          format.json { render :show, status: :ok, location: @volunteer }
        else
          format.html { render :edit }
          format.json { render json: @volunteer.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @volunteer.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Volunteer Application was removed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_volunteer
        @volunteer = Volunteer.find(params[:id])
      end

      def set_project
        @project = Project.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def volunteer_params
        params.require(:volunteer).permit(:name, :email, :project, :role, :id, :idea, :details)
      end

end
