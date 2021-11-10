# Gollum Setup
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES

# Takes away all markups as a format
Gollum::Markup.formats.clear

Gollum::Markup.formats[:markdown] = {
  :name => "Markdown",
  :extensions => ['md'],
  :reverse_links => false
}

