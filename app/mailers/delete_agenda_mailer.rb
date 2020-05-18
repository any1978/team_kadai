class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_mail(team_members)
    @emails = []
    team_members.each do |user|
      @emails << user.email
    end
    @emails = @emails.join(',')
    
    mail to: "#{@emails}", subject: "アジェンダ削除のお知らせ"
  end
end 

# p ["apple", "orange", "lemon"].join(',') #=> "apple,orange,lemon" 