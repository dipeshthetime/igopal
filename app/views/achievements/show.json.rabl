object @achievements
node(:startDate){|achievement| (achievement.start_date)}
node(:endDate){|achievement| (achievement.end_date)}
node(:headline){|achievement| (achievement.headline)}
node(:text){|achievement| (achievement.notes)}

node(:asset){|achievement| (
child :work do
  node(:media){|work|(work.url)}
  node(:credit){}
  node(:caption){}
end)}

