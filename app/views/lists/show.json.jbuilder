json.name @list.name
json.items @list.items do |i|
  json.(i, :description, :due_date, :completed_at)
end
