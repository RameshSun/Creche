class ChildrenController < ApplicationController
  # GET /children
  # GET /children.json

  before_filter :check_creche_user_logged_in, :only => [:index, :show]
  before_filter :check_creche_admin_logged_in, :only => [:new, :edit, :update, :destroy]

  def index
    @children = Child.all

    respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @children }
    end
  end

  # GET /children/1
  # GET /children/1.json
  def show
    @child = Child.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child }
    end
  end

  # GET /children/new
  # GET /children/new.json
  def new
    @child = Child.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child }
    end
  end

  # GET /children/1/edit
  def edit
    @child = Child.find(params[:id])
  end

  # POST /children
  # POST /children.json
  def create
    @child = Child.new(params[:child])

    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'Child was successfully created.' }
        format.json { render json: @child, status: :created, location: @child }
      else
        format.html { render action: "new" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /children/1
  # PUT /children/1.json
  def update
    @child = Child.find(params[:id])

    respond_to do |format|
      if @child.update_attributes(params[:child])
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def destroy
    @child = Child.find(params[:id])
    @child.destroy

    respond_to do |format|
      format.html { redirect_to children_url }
      format.json { head :no_content }
    end
  end

  private 

    def check_creche_admin_logged_in
      authenticate_or_request_with_http_basic("Children") do |username, password|
        username == "admin" && password == "admin"
      end
    end

    def check_creche_user_logged_in
      authenticate_or_request_with_http_basic("Children") do |username, password|
        username == "user" && password == "user"
      end
    end

end
