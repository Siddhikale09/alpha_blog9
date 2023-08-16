class ElementsController < ApplicationController
before_action :get_param, only: [:show, :edit, :update, :destroy]

def index
@el = Element.all
end

def show
end

def new
@el = Element.new
end

def create
@el = Element.new(params.require(:element).permit(:title, :details))
if @el.save
    flash[:notice] = 'Element saved successfully!'
    redirect_to @el
else
    render :new, status: :unprocessable_entity
end
end

def edit
end

def update
if @el.update(set_param)
    flash[:notice] = 'Element updated successfully!'
    redirect_to @el
else
    render :edit, status: :unprocessable_entity
end
end

def destroy
@el.destroy
redirect_to elements_path
end

private

def get_param
@el = Element.find(params[:id])
end

def set_param
    params.require(:element).permit(:title, :details)
end

end
