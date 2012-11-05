## This is the new and improved alias structure for timeline.
# still needs images added and dates reformatted

object @portfolio => :timeline
	attribute :title => :headline
	attribute :variety => :type 
	attribute :intro => :text
	attribute :start_date => :startDate
	child :image => :asset do
		attribute :image => :media
		attribute :credit
		attribute :caption
	end
	child :achievements => :date do
		attribute :start_date => :startDate
		attribute :end_date => :endDate
		attribute :headline
		attribute :notes=> :text
		child :work => :asset do
			attribute :work_file_name => :media
			attribute :credit
			attribute :caption
		end
	end














