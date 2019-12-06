module ApplicationHelper

 def form_errors(errors)
      if errors.empty?
        return
      end
      e = '<div id="error_explanation" class="alert alert-danger col-md-11" role="alert">
		<a href="#" data-dismiss="alert" class="close">×</a>
        <h4>Se encontraron los siguientes errores:</h4>
        <ul id="list_errors">'
			for m in errors.full_messages.each
				e = e + "<li>" + m.to_s + "</li>\n"
			end
			e = e + "</ul></div>"
      return e.html_safe
 	end

  def form_notice(errors)
      logger.info(errors)
      if !errors
        return
      end
      e = '<div id="error_explanation" class="alert alert-danger col-md-11" role="alert">
    <a href="#" data-dismiss="alert" class="close">×</a>
        <h4>Se encontraron los siguientes errores:</h4>
        <ul id="list_errors">'
      
      e = e + "<li>" + notice + "</li>\n"
      e = e + "</ul></div>"
      return e.html_safe
  end

  def is_whole_number(variable)
    return variable % 1 == 0
  end
 
end
