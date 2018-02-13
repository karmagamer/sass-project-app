<<<<<<< HEAD
class Project < ActiveRecord::Base
  belongs_to :tenant
  validates_uniqueness_of :title
  has_many :artifacts, dependent: :destroy
  has_many :user_projects
  has_many :users, through: :user_projects
  validate :free_plan_can_only_have_one_project
  
  def free_plan_can_only_have_one_project
    if self.new_record? && (tenant.projects.count > 0) && (tenant.plan == 'free')
      errors.add(:base, "Free plans cannot have more than one project")
    end
  end
  
  def self.by_user_plan_and_tenant(tenant_id, user)
    tenant = Tenant.find(tenant_id)
    if tenant.plan == 'premium'
      if user.is_admin?
        tenant.projects
      else
        user.projects.where(tenant_id: tenant.id)
      end
    else
      if user.is_admin?
        tenant.projects.order(:id).limit(1)
      else
        user.projects.where(tenant_id: tenant.id).order(:id).limit(1)
      end
=======
class Project < ApplicationRecord
  belongs_to :tenant
  validates_uniqueness_of :title
  has_many :artifacts, dependent: :destroy
  validate :free_plan_can_only_have_one_project

  def free_plan_can_only_have_one_project
    if self.new_record? && (tenant.projects.count > 0 ) && (tenant.plan == 'free')
      errors.add(:base, "Don't be cheap ! Free plans can only have one project!")
    end
  end

  def self.by_plan_and_tenant(tenant_id)
    tenant = Tenant.find(tenant_id)
    if tenant.plan == 'premium'
      tenant.projects
    else
      tenant.projects.order(:id).limit(1)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    end
  end
end
