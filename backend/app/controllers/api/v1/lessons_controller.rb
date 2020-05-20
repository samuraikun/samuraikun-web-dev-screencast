class Api::V1::LessonsController < ApplicationController
  def index
    lessons = Lesson.all

    render json: LessonSerializer.new(lessons).serialized_json
  end

  def show
    lesson = Lesson.find(params[:id])

    render json: LessonSerializer.new(lesson).serialized_json
  end
end
