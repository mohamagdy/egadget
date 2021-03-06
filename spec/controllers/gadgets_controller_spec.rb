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

describe GadgetsController do

  # This should return the minimal set of attributes required to create a valid
  # Gadget. As you add validations to Gadget, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GadgetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all gadgets as @gadgets" do
      gadget = Gadget.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:gadgets)).to eq([gadget])
    end
  end

  describe "GET index" do
    it "assigns filtered gadgets as @gadgets" do
      gadgets = FactoryGirl.create_list(:gadget, 3)
      gadget = gadgets.first

      get :index, { search: gadget.name}, valid_session
      expect(assigns(:gadgets)).to include(gadget)
    end
  end

  describe "GET show" do
    it "assigns the requested gadget as @gadget" do
      gadget = Gadget.create! valid_attributes
      get :show, {:id => gadget.to_param}, valid_session
      expect(assigns(:gadget)).to eq(gadget)
    end
  end

  describe "GET new" do
    it "assigns a new gadget as @gadget" do
      get :new, {}, valid_session
      expect(assigns(:gadget)).to be_a_new(Gadget)
    end
  end

  describe "GET edit" do
    it "assigns the requested gadget as @gadget" do
      gadget = Gadget.create! valid_attributes
      get :edit, {:id => gadget.to_param}, valid_session
      expect(assigns(:gadget)).to eq(gadget)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Gadget" do
        expect {
          post :create, {:gadget => valid_attributes}, valid_session
        }.to change(Gadget, :count).by(1)
      end

      it "assigns a newly created gadget as @gadget" do
        post :create, {:gadget => valid_attributes}, valid_session
        expect(assigns(:gadget)).to be_a(Gadget)
        expect(assigns(:gadget)).to be_persisted
      end

      it "redirects to the created gadget" do
        post :create, {:gadget => valid_attributes}, valid_session
        expect(response).to redirect_to(Gadget.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gadget as @gadget" do
        # Trigger the behavior that occurs when invalid params are submitted
        Gadget.any_instance.stub(:save).and_return(false)
        post :create, {:gadget => { "name" => "invalid value" }}, valid_session
        expect(assigns(:gadget)).to be_a_new(Gadget)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Gadget.any_instance.stub(:save).and_return(false)
        post :create, {:gadget => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested gadget" do
        gadget = Gadget.create! valid_attributes
        # Assuming there are no other gadgets in the database, this
        # specifies that the Gadget created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Gadget).to receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => gadget.to_param, :gadget => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested gadget as @gadget" do
        gadget = Gadget.create! valid_attributes
        put :update, {:id => gadget.to_param, :gadget => valid_attributes}, valid_session
        expect(assigns(:gadget)).to eq(gadget)
      end

      it "redirects to the gadget" do
        gadget = Gadget.create! valid_attributes
        put :update, {:id => gadget.to_param, :gadget => valid_attributes}, valid_session
        expect(response).to redirect_to(gadget)
      end
    end

    describe "with invalid params" do
      it "assigns the gadget as @gadget" do
        gadget = Gadget.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Gadget.any_instance.stub(:save).and_return(false)
        put :update, {:id => gadget.to_param, :gadget => { "name" => "invalid value" }}, valid_session
        expect(assigns(:gadget)).to eq(gadget)
      end

      it "re-renders the 'edit' template" do
        gadget = Gadget.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Gadget.any_instance.stub(:save).and_return(false)
        put :update, {:id => gadget.to_param, :gadget => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gadget" do
      gadget = Gadget.create! valid_attributes
      expect {
        delete :destroy, {:id => gadget.to_param}, valid_session
      }.to change(Gadget, :count).by(-1)
    end

    it "redirects to the gadgets list" do
      gadget = Gadget.create! valid_attributes
      delete :destroy, {:id => gadget.to_param}, valid_session
      expect(response).to redirect_to(gadgets_url)
    end
  end

end
