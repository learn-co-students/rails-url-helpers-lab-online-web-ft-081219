class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @status = @student.active
  end

  def activate
   @student= Student.find(params[:id])
    if @student.active == false
    
      @student.update(active: true)
   
      redirect_to "/students/#{@student.id}"
      
    else


      @student.update(active: false)
   
      redirect_to "/students/#{@student.id}"
    
    end
   
  #  @student.active = true if  !@student.active
  
  end
  private

    def set_student
      @student = Student.find(params[:id])
      
    end
end