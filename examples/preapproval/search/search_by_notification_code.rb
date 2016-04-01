require_relative '../../boot'

# Find a Subscription by notification code
#
# You need to give AccountCredentials (EMAIL, TOKEN) and the notification code
#
# P.S: See the boot file example for more details.

credentials = PagSeguro::AccountCredentials.new('user@example.com', 'TOKEN')
subscription = PagSeguro::Subscription.find_by_notification_code('NOTIFICATION_CODE', credentials: credentials)

if subscription.errors.empty?
  puts "Subscription:"
  puts "\t#{subscription.inspect}"
else
  puts "Errors:"
  puts subscription.errors.join("\n")
end
