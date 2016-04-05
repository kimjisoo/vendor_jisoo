#!/sbin/sh
#Enable Nexus Boot Animation
#by rmkilc
 
. /tmp/backuptool.functions
 
list_files() {
cat <<EOF
media/bootanimation.zip
EOF
}
 
case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    #Rename some files
    mv /system/media/bootanimation.zip /system/media/bootanimation.zip.bak
 
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
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
