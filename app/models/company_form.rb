class CompanyForm < ApplicationRecord
  serialize :work_type, Array
  serialize :work_list, Array
  serialize :level_list, Array


  validates :title, {presence: true}
  validates :catchcopy, {presence: true}
  validates :work_list, {presence: true}
  validates :work_type, {presence: true}
  validates :level_list, {presence: true}
  validates :money, {presence: true}
  validates :otherwise_money, {presence: true}
  validates :period, {presence: true}
  validates :work_content, {presence: true, length: {maximum: 800}}
  validates :otherwise, {presence: true, length: {maximum: 800}}
  mount_uploader :image, ImageUploader
  with_options on: :confirm do |confirm|
    confirm.validates :japan, presence: true
    confirm.validates :image, presence: true
  end
end
