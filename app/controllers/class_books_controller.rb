class ClassBooksController < ApplicationController
   # GET /schools/:school_id/classes
   def index
     school = School.find(params[:school_id])
     class_books = school.class_books

     render json: class_books
   end
end
