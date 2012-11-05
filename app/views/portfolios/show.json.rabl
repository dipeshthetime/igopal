object @portfolios
node(:timeline){|portfolio|
(
		node(:headline){(portfolio.title)}
		node(:type){(portfolio.variety)}
		node(:text){(portfolio.intro)}
		node(:asset){
			child :image do |image|
			node(:media){ image.url}
			node(:credit){}
			node(:caption){}
			end
			}

		node(:date){|portfolio| (
			child :achievements do
				node(:startDate){|achievement| (achievement.start_date)}
				node(:endDate){|achievement| (achievement.end_date)}
				node(:headline){|achievement| (achievement.headline)}
				node(:text){|achievement| (achievement.notes)}
				node(:asset){|achievement| (
					child :work do
					  node(:media){|work|(work.url)}
					  node(:credit){}
					  node(:caption){}
					end)


				}

		end
	)}
)}






