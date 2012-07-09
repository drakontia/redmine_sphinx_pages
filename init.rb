# -*- coding: utf-8 -*-
require 'redmine'

Redmine::Plugin.register :redmine_sphinx_pages do
  name 'Redmine Sphinx Pages plugin'
  author 'Daisuke Miura'
  author_url 'http://twitter.com/drakontia'
  description 'This is a plugin for Redmine'
  version '0.0.2'
  requires_redmine :version_or_higher => '2.0.0'

  # top menuに追加
  #  menu :top_menu, :sphinx_list, { :controller => 'sphinx', :action => 'index' }, :caption => "List", :last => true

  # sphinx用のメニュー追加
  project_module :sphinx_pages do
    permission :sphinx, {:sphinx => [:index]}, :public => true
  end

  menu :project_menu, :sphinx_list, { :controller => 'sphinx', :action => 'index' }, :caption => 'Sphinx', :param => :project_id
end
