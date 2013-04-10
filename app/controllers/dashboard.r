REBOL [
	Title: "Dashboard Controller"
	Date: 18-Oct-2011
	Author: "Christopher Ross-Gill"
	Type: 'controller
]

route () to %dashboard [
	verify [
		not empty? users [
			redirect-to/status %users,register 307
		]

		not user/new? [
			redirect-to/status %/users,sign-in 307
		]
	]

	get [
		title: "Dashboard"

		if user/moderator? [
			pending-users: select users [pending]
		]

		if user/pending? [
			render {Your registration is being considered, please hold tight and we'll get back to you.}
		]
	]
]
