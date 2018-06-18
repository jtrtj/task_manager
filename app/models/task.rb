require 'sqlite3'

class Task
    attr_reader :title,
                :description

    def initialize(task_params)
        @database                 = SQLite3::Database.new('db/task_manager_development.db')
        @database.results_as_hash = true
        @description              = task_params["description"]
        @title                    = task_params["title"]
    end

    def save
        @database.execute("INSERT INTO tasks (title, description) VALUES (?, ?);", @title, @description)
    end

    def self.all
        database = SQLite3::Database.new('db/task_manager_development.db')
        database.results_as_hash = true
        tasks = database.execute("SELECT * FROM tasks")
        tasks.map do |task|
            Task.new(task)
        end
    end

    def self.find(id)
        database = SQLite3::Database.new('db/task_manager_development.db')
        database.results_as_hash = true
        task = database.execute("SELECT * FROM tasks WHERE id = ?", id.to_i).first
        Task.new(task)    
    end
end