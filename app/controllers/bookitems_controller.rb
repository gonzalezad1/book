class BookitemsController < ApplicationController
  before_action :set_bookitem, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /bookitems
  # GET /bookitems.json
  def index
    @bookitems = Bookitem.all
  end

  # GET /bookitems/1
  # GET /bookitems/1.json
  def show
  end

  # GET /bookitems/new
  def new
    @bookitem = Bookitem.new
    uploader = AvatarUploader.new
  end

  # GET /bookitems/1/edit
  def edit
  end

  # POST /bookitems
  # POST /bookitems.json
  def create
    @bookitem = Bookitem.new(bookitem_params)

    respond_to do |format|
      if @bookitem.save
        format.html { redirect_to @bookitem, notice: 'Bookitem was successfully created.' }
        format.json { render :show, status: :created, location: @bookitem }
      else
        format.html { render :new }
        format.json { render json: @bookitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookitems/1
  # PATCH/PUT /bookitems/1.json
  def update
    respond_to do |format|
      if @bookitem.update(bookitem_params)
        format.html { redirect_to @bookitem, notice: 'Bookitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookitem }
      else
        format.html { render :edit }
        format.json { render json: @bookitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookitems/1
  # DELETE /bookitems/1.json
  def destroy
    @bookitem.destroy
    respond_to do |format|
      format.html { redirect_to bookitems_url, notice: 'Bookitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookitem
      @bookitem = Bookitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookitem_params
      params.require(:bookitem).permit(:title, :author, :description, :user_id,:avatar)
    end
end
