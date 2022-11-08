class Schedule < ApplicationRecord
    has_many :schedule_reads, dependent: :destroy
    belongs_to :user, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
    has_many :schedule_area_sections, dependent: :destroy
    accepts_nested_attributes_for :schedule_area_sections, allow_destroy: true


    # include ActiveModel::Model
    # include ActiveModel::Attributes
    # # 追加
    # include ActiveRecord::AttributeAssignment

    # attribute :start_time, :datetime

    # def to_model
    #     Schedule.new(start_time: start_time)
    # end

    # def save
    #     return false if invalid?
    #     to_model.save
    # end

end
