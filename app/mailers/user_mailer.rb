class UserMailer < ApplicationMailer
  default from: 'n.cubilier@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://nico-events-project-mardi.herokuapp.com/' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def attendance_email(attendance)
    @user = attendance.attendee
    @event = attendance.event
    @url  = 'https://nico-events-project-mardi.herokuapp.com/' 
    mail(to: @user.email, subject: 'Tu participes à un nouvel évenement !') 
  end

  def admin_attend_email(attendance)
    puts "###########"    
    puts attendance.event.admin.first_name
    puts "###########"   
    @admin = attendance.event.admin
    @attendee = attendance.attendee
    @event = attendance.event
    @url  = 'https://nico-events-project-mardi.herokuapp.com/'
    mail(to: @admin.email, subject: 'Un nouveau participant à ton event !') 
  end

end
