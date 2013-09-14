class BlackmailsController < ApplicationController

  def index
    @blackmails = Blackmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blackmails }
    end
  end

  def show
    @blackmail = Blackmail.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blackmail }
    end
  end

  def new
    @blackmail = Blackmail.new
    @blackmail.user = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blackmail }
    end
  end

  def create
    @blackmail = Blackmail.new(params[:blackmail])
    @blackmail.user = current_user

    respond_to do |format|
      if @blackmail.save
        format.html { redirect_to @blackmail, notice: 'Challenge was successfully created.' }
        format.json { render json: @blackmail, status: :created, location: @blackmail }
      else
        format.html { render action: "new" }
        format.json { render json: @blackmail.errors, status: :unprocessable_entity }
      end
    end
  end

end