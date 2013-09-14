class ChallengesController < ApplicationController
  before_filter :authenticate_user!

  # GET /challenges
  # GET /challenges.json
  def index
    @challenges = Challenge.user(current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @challenges }
    end
  end

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @challenge }
    end
  end

  # GET /challenges/new
  # GET /challenges/new.json
  def new
    @challenge = Challenge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @challenge }
    end
  end

  # GET /challenges/1/edit
  def edit
    @challenge = Challenge.find(params[:id])
  end

  # POST /challenges
  # POST /challenges.json
  def create
    timezone = "%+03d:00" % params[:timezone]
    params[:challenge][:start] += timezone
    params[:challenge][:end] += timezone

    group = Group.find(params[:group_id])
    @challenge = group.challenges.build(params[:challenge])
    @challenge.group.users.each do |user|
      Action.create( :challenge => @challenge, :user => user, :count => 0)
    end

    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
        format.json { render json: @challenge, status: :created, location: @challenge }
      else
        format.html { render action: "new" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /challenges/1
  # PUT /challenges/1.json
  def update
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      if @challenge.update_attributes(params[:challenge])
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.json
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy

    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :no_content }
    end
  end

  def check_in
    @lat = 37.793020
    @long = -122.394507
    @address = "1 Market St, San Francisco, CA 91405"
  end

  def verify
    puts "works"
    if(params[:checked_in]==true)
      current_user.actions.where()
      puts "yes"
    else
      @string = "no"
      puts "no"
    end
    respond_to do |format|
      # The action 'vote' is called here.
      format.js
    end
  end
end
