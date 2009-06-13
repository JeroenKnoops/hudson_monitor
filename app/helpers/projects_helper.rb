module ProjectsHelper
  def display_coloured_cell(project)
    case project.state
    when 'Success'
      colour = 'green'
    when 'Failure'
      colour = 'red'
    when 'Unstable'
      colour = 'yellow'
    else
      colour = 'white'
    end
    content_tag(:span, project.name, :class => colour)
  end
end
