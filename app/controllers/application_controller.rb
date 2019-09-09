class ApplicationController < ActionController::Base
  before_action :set_models, only: [:index]
  before_action :set_model, only: [:edit, :show]

  def initialize
    @model_class = self.class.name.gsub('sController', '')
    @model = @model_class.downcase
  end

  def new
    create_model
  end

  def create
    create_model(model_params)

    if model_save
      go_to_model
    else
      render :new
    end
  end

  def update
    set_model.update(model_params)
    go_home
  end

  def destroy
    set_model.destroy
    go_home
  end

  protected

  def create_model(params = "")
    eval("@#{@model} = #{@model_class}.new(#{params})")
  end

  def go_home
    redirect_to root_path || eval("redirect_to #{@model}s_path")
  end

  def go_to_model
    eval("redirect_to @#{@model}")
  end

  def model(method)
    eval("#{@model_class}.#{method}")
  end

  def model_params
    attributes = eval("#{@model_class}::ATTRIBUTES")
    eval("params.require(:#{@model}).permit(#{attributes})")
  end

  def model_save
    eval("@#{@model}.save")
  end

  def set_model
    eval("@#{@model} = #{@model_class}.find(#{params[:id]})")
  end

  def set_models
    eval("@#{@model}s = #{@model_class}.all")
  end
end
