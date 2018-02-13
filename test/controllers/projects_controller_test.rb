require 'test_helper'

<<<<<<< HEAD
class ProjectsControllerTest < ActionController::TestCase
=======
class ProjectsControllerTest < ActionDispatch::IntegrationTest
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  setup do
    @project = projects(:one)
  end

  test "should get index" do
<<<<<<< HEAD
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
=======
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
<<<<<<< HEAD
      post :create, project: { details: @project.details, expected_completion_date: @project.expected_completion_date, tenant_id: @project.tenant_id, title: @project.title }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
=======
      post projects_url, params: { project: { details: @project.details, expected_completion_date: @project.expected_completion_date, tenant_id: @project.tenant_id, title: @project.title } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get :edit, id: @project
=======
    get edit_project_url(@project)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

  test "should update project" do
<<<<<<< HEAD
    patch :update, id: @project, project: { details: @project.details, expected_completion_date: @project.expected_completion_date, tenant_id: @project.tenant_id, title: @project.title }
    assert_redirected_to project_path(assigns(:project))
=======
    patch project_url(@project), params: { project: { details: @project.details, expected_completion_date: @project.expected_completion_date, tenant_id: @project.tenant_id, title: @project.title } }
    assert_redirected_to project_url(@project)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
<<<<<<< HEAD
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
=======
      delete project_url(@project)
    end

    assert_redirected_to projects_url
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  end
end
