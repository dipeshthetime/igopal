class Achievement < ActiveRecord::Base
  attr_accessible :end_date, :headline, :notes, :start_date, :work

  attr_accessible :work_attributes
has_attached_file :work,
                    :styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }

end
