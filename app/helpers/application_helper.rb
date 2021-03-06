module ApplicationHelper
  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
        <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert">&#215;</button>
        #{messages}
        </div>
        HTML
     html.html_safe
  end
  
  def display_contact(contact)
    if(contact)
     link_to contact.name, contact_path(contact)
    else
     link_to 'Add Contact', new_contact_path
    end
  end 
  
  def email_link(contact)
    if(contact)
      mail_to contact.email, contact.name, :encode => "javascript"
    else
     'No Contact'
    end
  end 
  
  
  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end
  
end
