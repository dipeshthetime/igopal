## This is the new and improved alias structure for timeline.
# 

object @portfolio => :timeline
	attribute :title => :headline
	attribute :variety => :type 
	attribute :intro => :text
	node(:startDate){|portfolio| (portfolio.start_date.strftime("%Y,%m,%d"))}
	child :image => :asset do |image|
		node(:media){|image|(image.url)}
		node(:credit){}
		node(:caption){}
	end
	child :achievements => :date do |achievement|
		node(:startDate){|achievement| (achievement.start_date.strftime("%Y,%m,%d"))}
		node(:endDate){|achievement| (achievement.end_date.strftime("%Y,%m,%d"))}
		node(:headline){|achievement| (achievement.headline)}
		node(:text){|achievement| (achievement.notes)}
		child :work => :asset do |work|
			node(:media){|work|(work.url)}
			node(:credit){}
			node(:caption){}
		end
	end














