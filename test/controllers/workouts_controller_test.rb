require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout = workouts(:one)
  end

  test "should get index" do
    get workouts_url, as: :json
    assert_response :success
  end

  test "should create workout" do
    assert_difference('Workout.count') do
      post workouts_url, params: { workout: { demo: @workout.demo, fitness_type: @workout.fitness_type, focus: @workout.focus, img: @workout.img, impact: @workout.impact, name: @workout.name, reps: @workout.reps } }, as: :json
    end

    assert_response 201
  end

  test "should show workout" do
    get workout_url(@workout), as: :json
    assert_response :success
  end

  test "should update workout" do
    patch workout_url(@workout), params: { workout: { demo: @workout.demo, fitness_type: @workout.fitness_type, focus: @workout.focus, img: @workout.img, impact: @workout.impact, name: @workout.name, reps: @workout.reps } }, as: :json
    assert_response 200
  end

  test "should destroy workout" do
    assert_difference('Workout.count', -1) do
      delete workout_url(@workout), as: :json
    end

    assert_response 204
  end
end
