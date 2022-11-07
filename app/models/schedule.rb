class Schedule < ApplicationRecord
    has_many :schedule_reads, dependent: :destroy
    belongs_to :user, optional: true
    has_many :schedule_area_sections, dependent: :destroy

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
