class WorksController < ApplicationController

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.user_id = session[:user_id]
    if @work.save
      redirect_to user_path(@work.user)
    else
      flash[:notice] = "Please complete all fields"
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    @work.update(work_params)
    if @work.save
      redirect_to work_path(@work)
    else
      flash[:notice] = "Please complete all fields"
      render :edit
    end
  end

  def delete
  end

  def destroy
    # THIS IS NOT WORKING. NEED TO FIX.
    @user.id = @work.user_id
    raise params.inspect
    Work.find(params[:id]).destroy
    redirect_to user_path(@user.id)
  end

  private

  def work_params
    params.require(:work).permit(:title, :description, :content, :user_id, :genre_id)
  end

end
