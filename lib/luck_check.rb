def luck_check (number)
 result = ""
 mapped_ticket = number.split("").map! {|n| n.to_i}
 length = mapped_ticket.length
 half = length/2
 if length.odd?
  mapped_ticket.delete_at(half)
 end
 head = mapped_ticket[0..half-1]
 tails = mapped_ticket[half..-1]
  if head.inject(:+) == tails.inject(:+)
    result << "true"
  else
    result << "false"
  end
result
end
puts luck_check("19863")
