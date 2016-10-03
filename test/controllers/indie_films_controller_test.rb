require 'test_helper'

class IndieFilmsControllerTest < ActionController::TestCase
  setup do
    @indie_film = indie_films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indie_films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indie_film" do
    assert_difference('IndieFilm.count') do
      post :create, indie_film: { description: @indie_film.description, distributor: @indie_film.distributor, favorite: @indie_film.favorite, img_url: @indie_film.img_url, title: @indie_film.title, year: @indie_film.year }
    end

    assert_redirected_to indie_film_path(assigns(:indie_film))
  end

  test "should show indie_film" do
    get :show, id: @indie_film
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indie_film
    assert_response :success
  end

  test "should update indie_film" do
    patch :update, id: @indie_film, indie_film: { description: @indie_film.description, distributor: @indie_film.distributor, favorite: @indie_film.favorite, img_url: @indie_film.img_url, title: @indie_film.title, year: @indie_film.year }
    assert_redirected_to indie_film_path(assigns(:indie_film))
  end

  test "should destroy indie_film" do
    assert_difference('IndieFilm.count', -1) do
      delete :destroy, id: @indie_film
    end

    assert_redirected_to indie_films_path
  end
end
