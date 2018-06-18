1. Define CRUD.

  **C**reate
  
  **R**ead
  
  **U**pdate
  
  **D**elete

2. Why do we use set method_override: true?

  So that we can override a method that HTML would usually not allow.

3. Explain the difference between value and name in this line: `<input type='text' name='task[title]' value="<%= @task.title %>"/>.`

  The name is the identifier of th is input. Value is what the name is being set to.

4. What are params? Where do they come from?

  Params are attributes of items in a database. In this case they come from our SQLite3 datebase.

5. Check out your routes. Why do we need two routes each for creating a new Task and editing an existing Task?
