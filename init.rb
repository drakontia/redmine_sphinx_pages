# -*- coding: utf-8 -*-
require 'redmine'

Redmine::Plugin.register :redmine_sphinx_pages do
  name 'Redmine Sphinx Pages plugin'
  author 'nishio-dens, drakontia'
  author_url 'http://twitter.com/drakontia'
  description 'This is a plugin for Redmine'
  version '0.0.2'
  requires_redmine :version_or_higher => '2.0.0'

  # sphinx用のメニュー追加
  project_module :sphinx_pages do
    permission :view_sphinx_pages, {:sphinx => [:index]}, :public => true
    permission :config_sphinx_pages,  {:config_sphinx_pages => [:show,  :update,  :add_filter,  :edit_filter,  :sort]},  :require => :member
  end

  menu :project_menu, :sphinx_pages, { :controller => 'sphinx', :action => 'index' }, :caption => 'Sphinx',
    :if => Proc.new{|project|
    setting = SphinxPagesProjectSetting.find_or_create(project)
    project.repository != nil and setting adn !setting.hide_sphinx_pages_tab
  }, :after => :repository, :param => :project_id
end
