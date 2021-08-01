class SubjectsController < ApplicationController
  layout false
  def index
    @subjects = Subject.sorted
  end

  def show
    @subjects = Subject.find(params[:id])
  end

  def new
    @subjects = Subject.new(:name => 'Default')
    render template: "subjects/new"
  end

  def create
    @subjects = Subject.new(subjects_params)
    if @subjects.save
      flash[:notice]="Subject created successfully..."
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subjects = Subject.find(params[:id])
  end

  def update
    @subjects = Subject.find(params[:id])
    if @subjects.update(subjects_params)
      flash[:notice]="Subject updated successfully..."
      redirect_to(subjects_path(@subjects))
    else
      render('edit')
    end
  end

  def delete
    @subjects = Subject.find(params[:id])
  end

  def  destroy
    @subjects = Subject.find(params[:id])
    @subjects.destroy
    flash[:notice]="Subject deleted successfully..."
    redirect_to(subjects_path)
  end

  private
  def subjects_params
    params.required(:subject).permit(:name,:position,:visible)
  end
    
end
