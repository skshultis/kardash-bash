from kardashian show.html.erb:

<% if comment.user_id==session[:user]["id"] || session[:user]["admin"]%>
<%= button_to "delete", comment, :method => :delete %>
<% end %>

        to delete comments after users have been created_at


from line 10 comments CommentsController

  (user_id: session[:user]["id"]).merge(name: session[:user]["username"])
