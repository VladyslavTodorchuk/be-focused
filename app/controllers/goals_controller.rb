class GoalsController < ApplicationController
	def edit
		@goal = Goal.find_by id: params[:id]

		if @goal == nil
			redirect_to goals_path
		end
	end

	def show
		@goal = Goal.find_by id: params[:id]

		if @goal == nil
			redirect_to goals_path
		end
	end

	def destroy
		@goal = Goal.find_by id: params[:id]
		@goal.destroy
		respond_to do |format|
     	 	format.html { redirect_to goals_path, notice: 'Goal was successfully destroyed.' }
      		format.json { head :no_content }
    	end

	end

	def update
		@goal = Goal.find_by id: params[:id]
		respond_to do |format|
	
		if @goal.update goal_params
			format.html { redirect_to goal_path, notice: 'Goal was successfully updated.' }
        	format.json { render :show, status: :ok, location: @goals }
      	else
        	format.html { render :edit }
        	format.json { render json: @goals.errors, status: :unprocessable_entity }
		end
		end
	end

	def index
		@goals_is_completed = Goal.where(isComplete:false)
		@goals_is_not_completed = Goal.where(isComplete:true)
		@goals = @goals_is_completed + @goals_is_not_completed
	end

	def new 
		@goal = Goal.new
	end

	def create
		@goal = Goal.new goal_params
		respond_to do |format|
			if @goal.save
				format.html { redirect_to goals_path, notice: 'Goal was successfully created.' }
        		format.json { render :show, status: :created, location: @goal }
			else
				format.html { render :new }
        		format.json { render json: @goal.errors, status: :unprocessable_entity }
			end
		end

	end


	def goal_params
		params.require(:goal).permit(:title, :body, :date_time, :priority, :isComplete)
	end
end