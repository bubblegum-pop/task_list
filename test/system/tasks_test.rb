require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "To Do"
  end

  test "should create task" do
    visit new_task_url

    check "Important" if @task.important
    fill_in "Task name", with: @task.task_name
    check "Urgent" if @task.urgent
    click_on "Create Task"
  end

  test "should update Task" do
    visit edit_task_url(@task)

    check "Important" if @task.important
    fill_in "Task name", with: @task.task_name
    check "Urgent" if @task.urgent
    click_on "Update Task"
  end

  # test "should destroy Task" do
  #   visit task_url(@task)
  #   click_on "Destroy this task", match: :first
  # end
end
