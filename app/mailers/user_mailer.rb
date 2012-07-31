class UserMailer < ActionMailer::Base
  default from: "from@example.com"
def creation_email(task)
    @task = task
    @user = @task.users.map(&:email)
    
    mail(:to => @task.users.map(&:email), :subject => "Creation of task")

  end
def deletion_email(task)
    @task = task
    @user = @task.users.collect(&:email).join("; ")
    mail(:to => @task.users.map(&:email), :subject => "Deletion of task")
    
  end
def completion_email(task)
    @task = task
   @user = @task.users.collect(&:email).join("; ")
    mail(:to => @task.users.map(&:email), :subject => "Completion of task")
   
  end
end
