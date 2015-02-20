class PersonaQuestionsController < ApplicationController
  before_action :set_persona_question, only: [:show, :edit, :update, :destroy]

  # GET /persona_questions
  # GET /persona_questions.json
  def index
    @persona_questions = PersonaQuestion.all
  end

  # GET /persona_questions/1
  # GET /persona_questions/1.json
  def show
  end

  # GET /persona_questions/new
  def new
    @persona_question = PersonaQuestion.new
  end

  # GET /persona_questions/1/edit
  def edit
  end

  # POST /persona_questions
  # POST /persona_questions.json
  def create
    @persona_question = PersonaQuestion.new(persona_question_params)

    respond_to do |format|
      if @persona_question.save
        format.html { redirect_to @persona_question, notice: 'Persona question was successfully created.' }
        format.json { render :show, status: :created, location: @persona_question }
      else
        format.html { render :new }
        format.json { render json: @persona_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persona_questions/1
  # PATCH/PUT /persona_questions/1.json
  def update
    respond_to do |format|
      if @persona_question.update(persona_question_params)
        format.html { redirect_to @persona_question, notice: 'Persona question was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona_question }
      else
        format.html { render :edit }
        format.json { render json: @persona_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persona_questions/1
  # DELETE /persona_questions/1.json
  def destroy
    @persona_question.destroy
    respond_to do |format|
      format.html { redirect_to persona_questions_url, notice: 'Persona question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona_question
      @persona_question = PersonaQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_question_params
      params.require(:persona_question).permit(:persona_id, :question_id)
    end
end
