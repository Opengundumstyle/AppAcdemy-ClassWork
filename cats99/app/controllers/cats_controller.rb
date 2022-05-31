class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @catherine = Cat.find(params[:id])

        if @catherine #if found cat
            render :show
        else #if id did not find cat
            redirect_to cats_url
        end
    end

    def new
        @colors = Cat.catcolors
        render :new
    end

    def create
        @cat = Cat.new(cat_params)

        if @cat.save #if successfully saved
            redirect_to cat_url(@cat)
        else #if id did not find cat
            render json: @cat.errors.full_messages, status: :unprocessable_entity
        end
    end   

  def edit
       @colors = Cat.catcolors
       @cat = Cat.find_by(id: params[:id])
       render :edit
  end

  def update
      @cat = Cat.find_by(id: params[:id])

      if @cat.update_attributes(cat_params)
          redirect_to cat_url(@cat)
      else
        render :edit
      end
  end
   
    private 
    def cat_params
        params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
    end

    # t.date :birth_date, null:false
    # t.string :color, null:false
    # t.string :name, null:false
    # t.string :sex, null: false, limit: 1
    # t.text :description, null: false
end
