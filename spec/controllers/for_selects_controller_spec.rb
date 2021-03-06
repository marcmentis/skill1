require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ForSelectsController do

  # This should return the minimal set of attributes required to create a valid
  # ForSelect. As you add validations to ForSelect, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "code" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ForSelectsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all for_selects as @for_selects" do
      for_select = ForSelect.create! valid_attributes
      get :index, {}, valid_session
      assigns(:for_selects).should eq([for_select])
    end
  end

  describe "GET show" do
    it "assigns the requested for_select as @for_select" do
      for_select = ForSelect.create! valid_attributes
      get :show, {:id => for_select.to_param}, valid_session
      assigns(:for_select).should eq(for_select)
    end
  end

  describe "GET new" do
    it "assigns a new for_select as @for_select" do
      get :new, {}, valid_session
      assigns(:for_select).should be_a_new(ForSelect)
    end
  end

  describe "GET edit" do
    it "assigns the requested for_select as @for_select" do
      for_select = ForSelect.create! valid_attributes
      get :edit, {:id => for_select.to_param}, valid_session
      assigns(:for_select).should eq(for_select)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ForSelect" do
        expect {
          post :create, {:for_select => valid_attributes}, valid_session
        }.to change(ForSelect, :count).by(1)
      end

      it "assigns a newly created for_select as @for_select" do
        post :create, {:for_select => valid_attributes}, valid_session
        assigns(:for_select).should be_a(ForSelect)
        assigns(:for_select).should be_persisted
      end

      it "redirects to the created for_select" do
        post :create, {:for_select => valid_attributes}, valid_session
        response.should redirect_to(ForSelect.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved for_select as @for_select" do
        # Trigger the behavior that occurs when invalid params are submitted
        ForSelect.any_instance.stub(:save).and_return(false)
        post :create, {:for_select => { "code" => "invalid value" }}, valid_session
        assigns(:for_select).should be_a_new(ForSelect)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ForSelect.any_instance.stub(:save).and_return(false)
        post :create, {:for_select => { "code" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested for_select" do
        for_select = ForSelect.create! valid_attributes
        # Assuming there are no other for_selects in the database, this
        # specifies that the ForSelect created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ForSelect.any_instance.should_receive(:update).with({ "code" => "MyString" })
        put :update, {:id => for_select.to_param, :for_select => { "code" => "MyString" }}, valid_session
      end

      it "assigns the requested for_select as @for_select" do
        for_select = ForSelect.create! valid_attributes
        put :update, {:id => for_select.to_param, :for_select => valid_attributes}, valid_session
        assigns(:for_select).should eq(for_select)
      end

      it "redirects to the for_select" do
        for_select = ForSelect.create! valid_attributes
        put :update, {:id => for_select.to_param, :for_select => valid_attributes}, valid_session
        response.should redirect_to(for_select)
      end
    end

    describe "with invalid params" do
      it "assigns the for_select as @for_select" do
        for_select = ForSelect.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ForSelect.any_instance.stub(:save).and_return(false)
        put :update, {:id => for_select.to_param, :for_select => { "code" => "invalid value" }}, valid_session
        assigns(:for_select).should eq(for_select)
      end

      it "re-renders the 'edit' template" do
        for_select = ForSelect.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ForSelect.any_instance.stub(:save).and_return(false)
        put :update, {:id => for_select.to_param, :for_select => { "code" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested for_select" do
      for_select = ForSelect.create! valid_attributes
      expect {
        delete :destroy, {:id => for_select.to_param}, valid_session
      }.to change(ForSelect, :count).by(-1)
    end

    it "redirects to the for_selects list" do
      for_select = ForSelect.create! valid_attributes
      delete :destroy, {:id => for_select.to_param}, valid_session
      response.should redirect_to(for_selects_url)
    end
  end

end
