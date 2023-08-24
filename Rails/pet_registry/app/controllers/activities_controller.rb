class ActivitiesController < ApplicationController
    # def activity_params
    #     params.require(:activity).permit(:pet_id, :action)
    # end

    # def create
    #     @pet = Pet.find(params[:pet_id])
    #     @activity = @pet.activities.new(activity_params)
   
    #     respond_to do |format|
    #       if @activity.save
    #         format.html { redirect_to @pet, notice: "Activity was successfully created." }
    #       else
    #         format.html { render :new, status: :unprocessable_entity }
    #       end
    #     end
    #   end
    def index
        #fetches all activities from the database
        @activities = Activity.all
    end

    def show
        set_page
        # @activity = @pet.activities.build
      end

      def new
        @activity = Activity.new 
      end
    
      def create
        
        @activity = Activity.new(activity_params)
        if @activity.save
          redirect_to @activity
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        set_page
      end
    
      def update
        set_page
      
        if @activity.update(activity_params)

          redirect_to @activity, notice: "Activity successfully created"
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      def destroy
        set_page
        @activity.destroy
        redirect_to root, status: :see_other
      end

      private
      def activity_params
          params.require(:activity).permit(:action, :high_energy)
      end
      def set_page
        # index
        @activity = Activity.find(params[:id])
        # @activities = Activity.find(1)
      end
end
