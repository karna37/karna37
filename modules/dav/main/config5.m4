dnl modules enabled in this directory by default

APACHE_MODPATH_INIT(dav/main)

dav_objects="mod_dav.lo ms_wdv.lo props.lo util.lo util_lock.lo liveprop.lo providers.lo std_liveprop.lo"

if test "$enable_http" = "no"; then
  dav_enable=no
else
  dav_enable=most
fi

APACHE_MODULE(dav, WebDAV protocol handling.  --enable-dav also enables mod_dav_fs, $dav_objects, , $dav_enable)

APR_ADDTO(INCLUDES, [-I\$(top_srcdir)/$modpath_current])

APACHE_MODPATH_FINISH
