require 'rails_helper'

RSpec.describe SchoolsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "sets schools instance variable" do
      school = School.create(name:'test', low_grade: '7', high_grade: '9')
      get :index
      expect(assigns(:schools)).to eq([school])
    end

    it 'renders index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    before(:each) do
      @school = School.create(name:'test', low_grade: '7', high_grade: '9')
      get :show, id: @school.id
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'sets the school instance variable' do
      expect(assigns(:school)).to eq(@school)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'sets the new school instance variable' do
      expect(assigns(:school)).to_not be(:nil)
    end

    it 'renders the new template' do
      expect(response).to render_template(:new)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
