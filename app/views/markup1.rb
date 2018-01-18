module ApplicationHelper
  include HtmlBuilder

def table_of_users(users)

markup do |m|
  m.table(id: 'users') do
    m.tr do
      m.th 'Family Name'
      m.th 'Given Name'
    end
    @users.each do |u|
      attrs = {}
      attrs[:class] = 'admin' if u.admin?
      m.tr(attrs) do
        m.td u.family_name
	m.td u.given_name
      end
    end
  end
end

end

