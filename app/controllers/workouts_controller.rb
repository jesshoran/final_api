class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]

  # GET /workouts
  def index
    @workouts = Workout.all.order(:name)

    render json: @workouts
  end

  def high_impact
    splitList = Workout.where(impact: "High").sample(9)
    @workouts = {"group_one": [splitList[0], splitList[1], splitList[2]], "group_two": [splitList[3], splitList[4], splitList[5]], "group_three": [splitList[6], splitList[7], splitList[8]]}
    render json: @workouts
   
  end

  def low_impact
    splitList = Workout.where(impact: "Low").sample(9)
    @workouts = {"group_one": [splitList[0], splitList[1], splitList[2]], "group_two": [splitList[3], splitList[4], splitList[5]], "group_three": [splitList[6], splitList[7], splitList[8]]}
    render json: @workouts
  end

  def core_blast
    @workouts = Workout.where(focus: "Core").sample(10)
    render json: @workouts
  end

  def leg_day
    splitList = @workouts = Workout.where(focus: "Lower").sample(9)
    render json: @workouts
  end

  def surprise_me
    @workouts = Workout.all.sample(15)
    render json: @workouts
  end

  # GET /workouts/1
  def show
    render json: @workout
  end

  # POST /workouts
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:name, :impact, :fitness_type, :focus, :img, :demo, :reps)
    end
end
