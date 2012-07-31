class Task < ActiveRecord::Base

after_create  :send_email
before_destroy :send_email_des
after_update :send_email_up

  # attr_accessible :title, :body


attr_accessible  :user_ids, :user_id, :detail, :completion
has_and_belongs_to_many :users
has_many :users_tasks
 def send_email
    UserMailer.creation_email(self).deliver
end
 def send_email_des
    UserMailer.deletion_email(self).deliver
end
def send_email_up
UserMailer.completion_email(self).deliver
end


end
