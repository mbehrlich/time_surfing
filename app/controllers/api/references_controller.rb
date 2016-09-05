class Api::ReferencesController < ApplicationController

  before_action :ensure_logged_in, only: [:create]

  def index
    @references = Reference.where(subject_id: params[:user_id])
  end

  def create
    @reference = Reference.new(reference_params)
    @reference.author_id = current_user.id
    @reference.subject_id = params[:user_id]
    if @reference.save
      render :show
    else
      render json: @reference.errors.full_messages
    end
  end

  def reference_params
    params.require(:reference).permit(:recommended, :body)
  end

end
