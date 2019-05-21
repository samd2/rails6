class Articles2sController < ApplicationController
  before_action :set_articles2, only: [:show, :edit, :update, :destroy]

  # GET /articles2s
  # GET /articles2s.json
  def index
    @articles2s = Articles2.all
  end

  # GET /articles2s/1
  # GET /articles2s/1.json
  def show
  end

  # GET /articles2s/new
  def new
    @articles2 = Articles2.new
  end

  # GET /articles2s/1/edit
  def edit
  end

  # POST /articles2s
  # POST /articles2s.json
  def create
    @articles2 = Articles2.new(articles2_params)

    respond_to do |format|
      if @articles2.save
        format.html { redirect_to @articles2, notice: 'Articles2 was successfully created.' }
        format.json { render :show, status: :created, location: @articles2 }
      else
        format.html { render :new }
        format.json { render json: @articles2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles2s/1
  # PATCH/PUT /articles2s/1.json
  def update
    respond_to do |format|
      if @articles2.update(articles2_params)
        format.html { redirect_to @articles2, notice: 'Articles2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @articles2 }
      else
        format.html { render :edit }
        format.json { render json: @articles2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles2s/1
  # DELETE /articles2s/1.json
  def destroy
    @articles2.destroy
    respond_to do |format|
      format.html { redirect_to articles2s_url, notice: 'Articles2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articles2
      @articles2 = Articles2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articles2_params
      params.require(:articles2).permit(:title, :body)
    end
end
