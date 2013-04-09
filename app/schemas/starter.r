REBOL [
	Title: "QM Starter Database Spec"
	Type: 'schema
]

starter: database [
	sessions: table [
		id: tuple! 23 primary
		created: date!
		modified: date! index
		address: opt tuple! 20
		user: opt :users
		message: opt string! 600
		crumbs: opt block! 255
		other: opt block! 255
	]

	users: table [
		id: string! 20 primary index
		owner: opt logic!
		valikey: tuple! 23
		toc: logic!
		name: string! 80
		email: email! 80
		password: string! 100
		joined: date!
		roles: opt block! 255
		last-activity: date!
		biography: opt string! 255
		home-page: opt url! 150
		google-profile: opt url! 80
		twitter-id: opt string! 15
		facebook-profile: opt url! 80
		misc: opt block! 255
	]
]
