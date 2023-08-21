# AX_CHECK_FOLDERS(PATH, ACTION-IF-FOUND, [ACTION-IF-NOT-FOUND])
# -----------------------------------------------------------
# First checks if the provided PATH exists and is a directory.
# If so, then checks if at least one folder exists in the provided PATH.
# Calls ACTION-IF-FOUND if found, ACTION-IF-NOT-FOUND otherwise.

AC_DEFUN([AX_CHECK_FOLDERS], [
  AC_MSG_CHECKING([if $1 is a valid directory])
  if test -d "$1"; then
    AC_MSG_RESULT([yes])
    AC_MSG_CHECKING([for at least one folder in $1])
    if (find "$1" -maxdepth 1 -mindepth 1 -type d | grep -q .); then
      AC_MSG_RESULT([yes])
      $2
    else
      AC_MSG_RESULT([no])
      m4_ifval([$3], [$3], [])
    fi
  else
    AC_MSG_RESULT([no])
  fi
])
