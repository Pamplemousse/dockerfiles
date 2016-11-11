#!/bin/bash
user=$(whoami)

if [ $user != "root" ]; then
	cat >&2 <<-EOINFO
	INFO: A user has been specified. Default root is
	needed in order to perform group and user ids
	modifications.
	Do NOT use "-u <username>" in "docker run".
	****************************************************
	EOINFO
else
	username="robert_paulson"

	if [ "$USER_ID" ]; then
		uid="$USER_ID"
	else
		cat >&2 <<-'EOINFO'
		INFO: No uid as been specified, 1000 will be used by
		default.
		Use "-e USER_ID=1042" to set it in "docker run".
		****************************************************
		EOINFO

		uid=1000
	fi

	if [ "$GROUP_ID" ]; then
		gid="$GROUP_ID"
	else
		cat >&2 <<-'EOINFO'
		INFO: No gid as been specified, 1000 will be used by
		default.
		Use "-e GROUP_ID=1042" to set it in "docker run".
		****************************************************
		EOINFO

		gid=1000
	fi

	groupadd -g $gid $username
	useradd -u $uid -g $gid -G node --create-home $username
fi

su -c "$@" $username
