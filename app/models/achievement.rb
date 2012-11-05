class Achievement < ActiveRecord::Base
  belongs_to :portfolio, :inverse_of => :achievements, :include => :user
  validates_presence_of :headline, :end_date, :work, :notes
  attr_accessible :end_date, :headline, :notes, :start_date, :work, 
  :work_file_name, :work_content_type, :work_file_size, :work_updated_at,
  :user_id, :portfolio_id, :portfolio, :user
  has_attached_file :work,
                    :styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :tiny=> "30x30",
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }

end
