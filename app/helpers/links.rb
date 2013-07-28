# Add helpers here as *.rb files, e.g.,

# app/helpers/formatting.rb

helpers do
  def confirm_delete_link(id)
    %Q[<a href="/notes/#{id}/delete" onclick="return confirm('Are you sure want to delete this note?');">Delete this note</a>]
  end
end
