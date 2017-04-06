require "test_helper"

describe TasksController do
  it "should get index" do
    get tasks_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get tasks_show_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get tasks_destroy_url
    value(response).must_be :success?
  end

  it "should get create" do
    get tasks_create_url
    value(response).must_be :success?
  end

  it "should get update" do
    get tasks_update_url
    value(response).must_be :success?
  end

end
