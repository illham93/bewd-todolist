class TasksController < ApplicationController
    def index
        @tasks = Task.all
        render 'tasks/index'
    end

    def create
        @task = Task.new(task_params)

        if @task.save
            render 'tasks/create'
        end
    end

    private
        def task_params
            params.require(:task).permit(:content)
        end
end
