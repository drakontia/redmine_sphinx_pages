# Sphinx Pages plugin for Redmine
# Copyright (C) 2009-2012 Daisuke Miura
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
if Rails::VERSION::MAJOR < 3
ActionController::Routing::Routes.draw do |map|
  map.connect 'projects/:id/sphinx_pages/:action', :controller => 'sphinx_pages', :conditions => {:method => [:get, :post]}
  map.connect 'projects/:id/settings/sphinx_pages/:action', :controller => 'sphinx_pages_settings', :conditions => {:method => [:get, :post, :put]}

end
else
RedmineApp::Application.routes.draw do
  match 'projects/:id/sphinx_pages/:action', :controller => 'sphinx_pages', :via => [:get, :post]
  match 'projects/:id/settings/sphinx_pages/:action', :controller => 'sphinx_pages_settings', :via => [:get, :post, :put]
end
end
