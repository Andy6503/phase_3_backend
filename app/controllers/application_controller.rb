class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  #get all employees
  get '/employees' do
    employees = Employee.all
    employees.to_json
  end
  get '/employees/:id' do
    employee = Employee.find(params[:id])
    employee.to_json
  end

  get '/employees/by_salary/' do
    # see the employees class for the  method definition of `.by_salary`
    employees = Employee.by_salary
    employees.to_json
  end

  get '/employees/by_salary_asc/' do
    # RETURNS THE EMPLOYEE WITH THE LOWEST SALARY
    employees = Employee.lowest_salary
    employees.to_json
  end

  ###CREATE(POST)####################
  post '/employees' do
    employee =
      Employee.create(
        name: params[:name],
        position: params[:position],
        salary: params[:salary],
        date_of_birth: params[:date_of_birth],
        manager_id: params[:manager_id],
      )
    employee.to_json
  end

  ###UPDATE(PATCH)####################
  patch '/employees/:id' do
    employee = Employee.find(params[:id])
    employee.update(
      name: params[:name],
      position: params[:position],
      salary: params[:salary],
      date_of_birth: params[:date_of_birth],
    )
    employee.to_json
  end

  ###DELETE by ID############

  delete '/employees/:id' do
    #find the employee using the ID
    employee = Employee.find(params[:id])

    # delete the employee
    employee.destroy

    #send a response with the deleted Employee as JSON
    employee.to_json
  end

  ##########################################################################

  #get all managerss
  get '/managers' do
    managers = Manager.all
    managers.to_json
  end

  get '/managers/by_salary/' do
    # see the managers class for the  method definition of `.by_salary`
    managers = Manager.by_salary
    managers.to_json
  end

  get '/managers/by_salary_asc/' do
    # RETURNS THE EMPLOYEE WITH THE LOWEST SALARY
    managers = Manager.lowest_salary
    managers.to_json
  end

  ###CREATE(POST)####################
  post '/managers' do
    manager =
      Manager.create(
        name: params[:name],
        position: params[:position],
        salary: params[:salary],
        date_of_birth: params[:date_of_birth],
        supervisor_id: params[:supervisor_id],
      )
    manager.to_json
  end

  ###UPDATE(PATCH)####################
  patch '/managers/:id' do
    manager = Manager.find(params[:id])
    manager.update(
      name: params[:name],
      position: params[:position],
      salary: params[:salary],
      date_of_birth: params[:date_of_birth],
    )
    manager.to_json
  end

  ###DELETE by ID############

  delete '/managers/:id' do
    #find the manager using the ID
    manager = Manager.find(params[:id])

    # delete the manager
    manager.destroy

    #send a response with the deleted manager as JSON
    manager.to_json
  end

  ##########################################################################

  #get all supervisors
  get '/supervisors' do
    supervisors = Supervisor.all
    supervisors.to_json
  end

  get '/supervisors/by_salary/' do
    # see the managers class for the  method definition of `.by_salary`
    supervisors = Supervisor.by_salary
    supervisors.to_json
  end

  get '/supervisors/by_salary_asc/' do
    # RETURNS THE EMPLOYEE WITH THE LOWEST SALARY
    supervisors = Supervisor.lowest_salary
    supervisors.to_json
  end

  ###CREATE(POST)####################
  post '/supervisors' do
    supervisor =
      Supervisor.create(
        name: params[:name],
        position: params[:position],
        salary: params[:salary],
        date_of_birth: params[:date_of_birth],
        ceo_id: params[:ceo_id],
      )
    supervisor.to_json
  end

  ###UPDATE(PATCH)####################
  patch '/supervisors/:id' do
    supervisor = Supervisor.find(params[:id])
    supervisor.update(
      name: params[:name],
      position: params[:position],
      salary: params[:salary],
      date_of_birth: params[:date_of_birth],
    )
    supervisor.to_json
  end

  ###DELETE by ID############

  delete '/supervisors/:id' do
    #find the supervisor using the ID
    supervisor = Supervisor.find(params[:id])

    # delete the supervisor
    supervisor.destroy

    #send a response with the deleted supervisor as JSON
    supervisor.to_json
  end

  ##########################################################################
  #get all ceos
  get '/ceos' do
    ceos = Ceo.all
    ceos.to_json
  end

  get '/ceos/by_salary' do
    # see the employees class for the  method definition of `.by_salary`
    ceos = Ceo.by_salary
    ceos.to_json
  end

  get '/ceos/lowest_salary' do
    # see the employees class for the  method definition of `.by_salary`
    ceos = Ceo.lowest_salary
    ceos.to_json
  end

  get '/ceos/highest_salary' do
    # see the employees class for the  method definition of `.by_salary`
    ceos = Ceo.highest_salary
    ceos.to_json
  end

  ###CREATE(POST)####################
  post '/ceos' do
    ceo =
      Ceo.create(
        name: params[:name],
        company_name: params[:company_name],
        position: params[:position],
        salary: params[:salary],
        date_of_birth: params[:date_of_birth],
      )
    ceo.to_json
  end

  ###UPDATE(PATCH)####################
  patch 'ceos/:id' do
    ceo = Ceo.find(params[:id])
    ceo.update(position: params[:position], salary: params[:salary])
    ceo.to_json
  end

  ###DELETE by ID############

  delete '/ceos/:id' do
    #find the CEO using the ID
    ceo = Ceo.find(params[:id])

    # delete the CEO
    ceo.destroy

    #send a response with the deleted CEO as JSON
    ceo.to_json
  end

  ##########################################################################
end
