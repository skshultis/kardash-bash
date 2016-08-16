from kardashian show.html.erb:

<% if comment.user_id==session[:user]["id"] || session[:user]["admin"]%>
<%= button_to "delete", comment, :method => :delete %>
<% end %>

        to delete comments after users have been created_at


from line 10 comments CommentsController

  (user_id: session[:user]["id"]).merge(name: session[:user]["username"])


show.html.erb, line 4

<p><%= link_to 'edit this Kardashian ', edit_kardashian_path(@kardashian) %><%= link_to 'delete this Kardashian', kardashian_path(@kardashian), method: :delete, data:{confirm: "Are you sure you want to delete this Kardashian?"} %></p>
    (removes ability to edit or delete kardashians)
