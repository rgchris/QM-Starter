#!/usr/local/bin/rebol -cs

REBOL [
	Title: "QuarterMaster Starter Project"
	Path: %../qm/qm.r
	Date:  9-Apr-2013
	Settings: [
		home: http://starter.domain/
		domain: "starter.domain"
		owner: starter@domain
		public-key: "starter"
		private-key: "starter#12345"
		session-timeout: 0:2
		database: mysql://root@localhost/starter
		zone: -6:00
		post-limit: 500 ;-- not active yet; can be altered per controller/action
		default-controller: "home"

		email: [
			name "Starter"
			email starter@domain
			host "mail.domain"
			user "starter!domain"
			pass "starter#email#12345"
			type "text/html"
		]

		spaces: [
			;-- QM requires entries for "system" "data" "site" "support"
			;-- Fixed Filepaths Preferred
			"system"  %../app/
			"space"   %../space/
			"site"    %../html/
			"support" %../qm/support/

			;-- Add more for your convenience
		]

		debug: true

		exceptions: {
			<html><head>
			<title>Error: <%== reason-type %></title>
			<link href="http://reb4.me/s/anywhere.css" rel="stylesheet" /></head>
			<body>
			<h1>QuarterMaster Starter</h1>
			<h2>Error Message</h2>
			<pre><code><%== reason %></code></pre>
			</body>
			</html>
		}

		connections: [
			oauth:flickr.com [
				consumer-key: #flickr-key
				consumer-secret: #flickr-secret
			]
		]
	]
]

do/args system/script/header/path system/script/header
