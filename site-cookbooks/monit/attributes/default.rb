
default[:monit][:notify_email]          = "ubuntu@localhost"

default[:monit][:poll_period]           = 60
default[:monit][:poll_start_delay]      = 120

default[:monit][:mail_format][:subject] = "$SERVICE $EVENT"
default[:monit][:mail_format][:from]    = "monit@swiftlaunch.com"
default[:monit][:mail_format][:message]    = <<-EOS
Monit $ACTION $SERVICE at $DATE on $HOST: $DESCRIPTION.
Yours sincerely,
monit
EOS



