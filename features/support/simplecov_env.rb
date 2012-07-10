if RUBY_VERSION >= "1.9"
  require 'simplecov'
  SimpleCov.start 'rails' do
    add_group('Sphinx_Pages', 'redmine_sphinx_pages')
  end
end
