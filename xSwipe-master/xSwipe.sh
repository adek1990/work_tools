#! /bin/sh
### BEGIN INIT INFO
# Provides:          eyesight
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Run /usr/local/xSwipe-master/xSwipe.pl if it exist
### END INIT INFO


PATH=/sbin:/usr/sbin:/bin:/usr/bin

. /lib/init/vars.sh
. /lib/lsb/init-functions

do_start() {
    ln -s lock /var/run/xSwipe.lock || exit 0
	if [ -x /usr/local/xSwipe/xSwipe.pl ]; then
		perl /usr/local/xSwipe/xSwipe.pl &
		ES=$?
		[ "$VERBOSE" != no ] && log_end_msg $ES
		return $ES
	fi
}

case "$1" in
    start)
	do_start
        ;;
    restart|reload|force-reload)
        ps -aux | grep xSwipe | grep pl | awk '{print $2}'  | sudo xargs kill -9
		do_start
        ;;
    stop)
		ps -aux | grep xSwipe |  grep pl | awk '{print $2}'  | sudo xargs kill -9
        ;;
    status)
		ps -aux | grep xSwipe | grep D
        ;;
    *)
        echo "Usage: $0 start|stop" >&2
        exit 3
        ;;
esac
