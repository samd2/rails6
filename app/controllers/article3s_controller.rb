class Article3sController < ApplicationController
  before_action :set_article3, only: [:show, :edit, :update, :destroy]

  # GET /article3s
  # GET /article3s.json
  def index
    @article3s = Article3.all
  end

  # GET /article3s/1
  # GET /article3s/1.json
  def show
  end

  # GET /article3s/new
  def new
    @article3 = Article3.new
  end

  # GET /article3s/1/edit
  def edit
  end

  # POST /article3s
  # POST /article3s.json
  def create
    @article3 = Article3.new(article3_params)

    respond_to do |format|
      if @article3.save
        format.html { redirect_to @article3, notice: 'Article3 was successfully created.' }
        format.json { render :show, status: :created, location: @article3 }
      else
        format.html { render :new }
        format.json { render json: @article3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article3s/1
  # PATCH/PUT /article3s/1.json
  def update
    respond_to do |format|
      if @article3.update(article3_params)
        format.html { redirect_to @article3, notice: 'Article3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @article3 }
      else
        format.html { render :edit }
        format.json { render json: @article3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article3s/1
  # DELETE /article3s/1.json
  def destroy
    @article3.destroy
    respond_to do |format|
      format.html { redirect_to article3s_url, notice: 'Article3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article3
      @article3 = Article3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article3_params
      params.require(:article3).permit(:title, :body)
    end
end
