# -*- coding: utf-8 -*-

class SphinxPagesProjectSetting < Settingslogic
  unloadable
  include Redmine::SafeAttributes

  belongs_to :project

  validates_presence_of :project_id

  def self.find_or_create(project)
    setting = SphinxPagesProjectSetting.find(:first, :conditions => ['project_id = ?',  project.id])
    unless setting
      setting = SphinxPagesProjectSetting.new
      setting.project_id = project_id
      setting.save!
    end
    setting
  end

end

