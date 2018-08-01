# Local Store 2018 July Sales 
# 1. Create 2 group 1 for members, the other for non-members, total members and non members
# 2. Show average how much each group spend
# 3. The types of purchase are ['food', 'electronics', 'clothes', 'others'], the salesman enter incorrectly please update them. 

sales = [{id: 1, name: 'apple', customer: 'Ben', payment_type: 'cash', date: '2018-07-18', location: 'store', type: 'food', membership_id: '93rqf3', total_payment: '$3.10'},
{id: 2, name: 'chips', customer: 'Parker', payment_type: 'cash', date: '2018-07-08', location: 'store', type: 'food', membership_id: nil, total_payment: '$1.32'},
{id: 3, name: 'shirt', customer: 'Louis', payment_type: 'cash', date: '2016-07-01', location: 'online', type: 'food', membership_id: '', total_payment: '$10.00'},
{id: 4, name: 'tv', customer: 'Eric', payment_type: 'card', date: '2018-07-18', location: 'store', type: 'electronics', membership_id: 'o233', total_payment: '$423.021'},
{id: 5, name: 'Phone', customer: 'John', payment_type: 'card', date: '2018-07-05', location: 'online', type: 'electronics', membership_id: '1vn98t', total_payment: '$650.12'},
{id: 6, name: 'toilet paper', customer: 'Ben', payment_type: nil, date: '2018-07-01', location: 'store', type: 'others', membership_id: 'aaaaaa', total_payment: '$5.84'},
{id: 7, name: 'paper', customer: 'Jordan', payment_type: nil, date: '2017-09-01', location: 'online', type: 'electronictronic', membership_id: '183', total_payment: '$0.84'}]

member_group = []
non_member_group = []

def sort_groups(sales, member_group, non_member_group)
    sales.each { |ele| (ele[:membership_id].nil? || ele[:membership_id].empty?) ? non_member_group << ele : member_group << ele }
end


def total_group_spending(group, year)
  group_spending = 0
  
  group.each do |ele|
    group_spending +=  ele[:total_payment].tr('$', '').to_f if ele[:date].include?(year)
  end  
  group_spending.round(2)
end

def average_group_spending(group, year)
  total_spend = total_group_spending(group, year)
  group_count = 0
    group.each do |ele|
       group_count += 1 if ele[:date].include?(year)   
    end

  (total_spend / group_count).round(2) unless group_count == 0 
end


sort_groups(sales, member_group, non_member_group)
puts "There are #{member_group.count} members, and #{non_member_group.count} non-members."
total_member_spending_2018 = total_group_spending(member_group, "2018")
total_non_member_spending_2018 = total_group_spending(non_member_group, "2018")
member_spend_avg_2018 = average_group_spending(member_group, "2018")
non_member_spend_avg_2018 = average_group_spending(non_member_group, "2018")
puts "Total member spending in 2018 was $#{total_member_spending_2018}. Total non-member spending in 2018 was $#{total_non_member_spending_2018}.  The average spending for members in 2018 was $#{member_spend_avg_2018}, and the average spending for non-members was $#{non_member_spend_avg_2018}."