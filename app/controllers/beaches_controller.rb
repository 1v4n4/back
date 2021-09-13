class BeachesController < ApplicationController

  # before_action :set_beach, only: %i[ show edit update destroy ]

   # GET /beaches or /beaches.json
   def index
     @beaches = Beach.all
     render json: { beaches: @beaches}
   end

   # GET /beaches/1 or /beaches/1.json
   def show

   end

   # GET /beaches/new
   def new
     @beach = Beach.new
   end

   # GET /beaches/1/edit
   def edit
   end

   # POST /beaches or /beaches.json
   def create
     @beach = Beach.create!(beach_params)

     render json: @beach, status: :created
   end

   # PATCH/PUT /beaches/1 or /beaches/1.json
   def update
     respond_to do |format|
       if @beach.update(beach_params)
         format.html { redirect_to @beach, notice: "Beach was successfully updated." }
         format.json { render :show, status: :ok, location: @beach }
       else
         format.html { render :edit, status: :unprocessable_entity }
         format.json { render json: @beach.errors, status: :unprocessable_entity }
       end
     end
   end

   # DELETE /beaches/1 or /beaches/1.json
   def destroy
     beach = Beach.find(params[:id])
     beach.delete
     head :no_content
   end

   private
     # Use callbacks to share common setup or constraints between actions.
     def set_beach
       @beach = Beach.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def beach_params
       params.require(:beach).permit(:name, :county, :location, :description, :parking, :restrooms, :campground, :photo1, :photo2, :photo3, :photo4)
     end
 end
