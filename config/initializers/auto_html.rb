AutoHtml.add_filter(:tipit) do |text|
  text.gsub(/\"(.*?)\"\((.*?)\)/) do
    %|<a href='#{$2}' title='#{$2}/qtip'>#{$1}</a>|
  end
end