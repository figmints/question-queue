class QuestionQueueFormsController < ApplicationController
  before_action :set_question_queue_form, only: [:show, :edit, :update, :destroy]

  # GET /question_queue_forms
  # GET /question_queue_forms.json
  def index
    @question_queue_forms = QuestionQueueForm.all
  end

  # GET /question_queue_forms/1
  # GET /question_queue_forms/1.json
  def show
  end

  # GET /question_queue_forms/new
  def new
    @question_queue_form = QuestionQueueForm.new
  end

  # GET /question_queue_forms/1/edit
  def edit
  end

  # POST /question_queue_forms
  # POST /question_queue_forms.json
  def create
    @question_queue_form = QuestionQueueForm.new(question_queue_form_params)

    respond_to do |format|
      if @question_queue_form.save
        format.html { redirect_to @question_queue_form, notice: 'Question queue form was successfully created.' }
        format.json { render :show, status: :created, location: @question_queue_form }
      else
        format.html { render :new }
        format.json { render json: @question_queue_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_queue_forms/1
  # PATCH/PUT /question_queue_forms/1.json
  def update
    respond_to do |format|
      if @question_queue_form.update(question_queue_form_params)
        format.html { redirect_to @question_queue_form, notice: 'Question queue form was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_queue_form }
      else
        format.html { render :edit }
        format.json { render json: @question_queue_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_queue_forms/1
  # DELETE /question_queue_forms/1.json
  def destroy
    @question_queue_form.destroy
    respond_to do |format|
      format.html { redirect_to question_queue_forms_url, notice: 'Question queue form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_queue_form
      @question_queue_form = QuestionQueueForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_queue_form_params
      params.require(:question_queue_form).permit(:title, :description, :department)
    end
end
