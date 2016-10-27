module ApplicationHelper
  def sortable (sort_by , label )
    # Check if sort_by matches the currently select sort option (if any)
    # AND if the params direction is currently ascending...
    # In that case we want the descending order. Otherwise we'll stick with ascending.
    if sort_by == sort_vacations && sort_direction == "asc"
      direction = "desc"
    else
      direction = "asc"
    end
    link_to label, :sort => sort_by, :direction => direction
  end
end
