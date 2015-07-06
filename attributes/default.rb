#Time Zones Files
default[:timezone][:pst8pdt]       = "/usr/share/zoneinfo/PST8PDT"
default[:timezone][:utc]       = "/usr/share/zoneinfo/UTC"
default[:timezone][:cuperinto]  = "/usr/share/zoneinfo/US/Pacific"
default[:timezone][:nyc]  = "/usr/share/zoneinfo/US/Eastern"

default[:timezone][:localtime]           = "etc/localtime"

#Time Servers
default[:timeserver_apple] = "time.apple.com"
default[:timeserver_pool_00] = "0.north-america.pool.ntp.org"
default[:timeserver_pool_01] = "1.north-america.pool.ntp.org"
