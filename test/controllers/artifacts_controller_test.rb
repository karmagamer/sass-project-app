require 'test_helper'

<<<<<<< HEAD
class ArtifactsControllerTest < ActionController::TestCase
=======
class ArtifactsControllerTest < ActionDispatch::IntegrationTest
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  setup do
    @artifact = artifacts(:one)
  end

  test "should get index" do
<<<<<<< HEAD
    get :index
    assert_response :success
    assert_not_nil assigns(:artifacts)
  end

  test "should get new" do
    get :new
=======
    get artifacts_url
    assert_response :success
  end

  test "should get new" do
    get new_artifact_url
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

  test "should create artifact" do
    assert_difference('Artifact.count') do
<<<<<<< HEAD
      post :create, artifact: { key: @artifact.key, name: @artifact.name, project_id: @artifact.project_id }
    end

    assert_redirected_to artifact_path(assigns(:artifact))
  end

  test "should show artifact" do
    get :show, id: @artifact
=======
      post artifacts_url, params: { artifact: { key: @artifact.key, name: @artifact.name, project_id: @artifact.project_id } }
    end

    assert_redirected_to artifact_url(Artifact.last)
  end

  test "should show artifact" do
    get artifact_url(@artifact)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get :edit, id: @artifact
=======
    get edit_artifact_url(@artifact)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

  test "should update artifact" do
<<<<<<< HEAD
    patch :update, id: @artifact, artifact: { key: @artifact.key, name: @artifact.name, project_id: @artifact.project_id }
    assert_redirected_to artifact_path(assigns(:artifact))
=======
    patch artifact_url(@artifact), params: { artifact: { key: @artifact.key, name: @artifact.name, project_id: @artifact.project_id } }
    assert_redirected_to artifact_url(@artifact)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  end

  test "should destroy artifact" do
    assert_difference('Artifact.count', -1) do
<<<<<<< HEAD
      delete :destroy, id: @artifact
    end

    assert_redirected_to artifacts_path
=======
      delete artifact_url(@artifact)
    end

    assert_redirected_to artifacts_url
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  end
end
