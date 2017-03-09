#!/bin/sh

usage() {
    echo >&2 "usage: errno [numbers or error names]\n"
    exit 1
}

for i
do
    case "$i" in
    [0-9]*)
        awk '/^#define/ && $3 == '"$i"' {
            for (i = 5; i < NF; ++i) {
                foo = foo " " $i;
            }
            printf("%-22s%s\n", $2 " [" $3 "]:", foo);
            foo = ""
        }' < /usr/include/sys/errno.h
        ;;
    E*)
        awk '/^#define/ && $2 == "'"$i"'" {
            for (i = 5; i < NF; ++i) {
                foo = foo " " $i;
            }
            printf("%-22s%s\n", $2 " [" $3 "]:", foo);
            foo = ""
        }' < /usr/include/sys/errno.h
        ;;
    *)
        echo >&2 "errno: can't figure out whether '$i' is a name or a number."
        usage
        ;;
    esac
done

