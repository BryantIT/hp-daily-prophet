module ApplicationHelper
  def style
    diamond = '&nbsp;&loz;&nbsp;'
    @style = diamond.gsub!(/\A"|"\Z/, '')
  end
end
