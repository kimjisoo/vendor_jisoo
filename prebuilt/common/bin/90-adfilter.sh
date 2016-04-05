#!/sbin/sh
#
# /system/addon.d/90-xposed.sh
# During an upgrade, if /system/bin/app_process.orig exists, this
# script backs up /system/bin/app_process, /system is formatted
# and reinstalled, the ROM bundled /system/bin/app_process is copied as
# /system/bin/app_process.orig, then /system/bin/app_process is restored
# (as would the Xposed Installer do)

. /tmp/backuptool.functions

HOSTS_FILE=etc/hosts

case "$1" in
  backup)
    [ -e "$S/${HOSTS_FILE}" ] && backup_file "$S/${HOSTS_FILE}"
  ;;
  restore)
    if [ -e "$C/$S/${HOSTS_FILE}" ]; then
      echo "Backuping new $S/${HOSTS_FILE} as $S/${HOSTS_FILE}.orig"
      cp -p "$S/${HOSTS_FILE}" "$S/${HOSTS_FILE}.orig"
      echo "Restoring hosts file $S/${HOSTS_FILE}"
      restore_file "$S/${HOSTS_FILE}"
    fi
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
