#!/bin/bash

#
#  script that uses xrdcp (assumes it's in /usr/bin/)
#  and copies the testfile that is used in the normal
#  alice eos tests from eosalice.cern.ch
#

if [ -f localtestfile ]; then
        rm -rf localtestfile
fi

if [ "$1" = "debug" ]; then
        export XRD_LOGLEVEL=Dump
fi

export XRD_CONNECTIONWINDOW="3"
export XRD_CONNECTIONRETRY="1"
export XRD_TIMEOUTRESOLUTION="1"
export XRD_PREFERIPV4="1"
export XRD_REQUESTTIMEOUT="60"
/usr/bin/xrdcp --force --path --posc --nopbar 'root://eosalice.cern.ch:1094//04/36435/05422528-a162-11e8-b5f9-a310691b2def?authz=-----BEGIN SEALED CIPHER-----
JDo1+wvRsMCXloiD28RYawvSx4knfzlZrg1w0LHACdAFHXpY-uUfvXzw8NJeUUoyt+S9xbQD1Bt4
x4cdF9E-HBFm4EJqYJmcDTVdfxq8lpd8dIDKS+0uCekp+VP02XcXKq+TK15HK1mfIXs3+8vOWhHn
UZMvia8Op6gx6e2mUnk=
-----END SEALED CIPHER-----
-----BEGIN SEALED ENVELOPE-----
AAAAgLYC9aZnmY5htcUZP8tGrAf+S3YisNDWQ1bPlSidRrWRfSGuOJfIFUw3nITSAMt2YszCESiO
cfOlP8S+jU+eqFe5dKOrP6MSufqEA0k0OWFxEwsMWNWUlQv6uufWf+g65RVH6RBaaOVFVzUQmn7+
sYiyqZoEaQRMJCLXVNIm2unvPw0cOKDFSJIRvZ07813wyc4nuzv9te0jQDPdqMGDfrup7dSpRk4M
aOiCalOVw5AtLGTuHCDwfEW5jx7k3vlhMJ2+0Xj0r4J+lir2b3SngUDJpa1EZHXjXeYt36WrSfkX
6HigAuW1hZWDdRty7vdhe7w6W9uEs9V+2MZ1imiBnPpKoEdwT8LWR4gh7K1ku5XkBAgY-EFppTzf
9G8pTVSIVOey5Tv3w1wyIwikMJSGjFNfyxhQ32QG27slwgk5cQ76a3MUqtYS7tpWlm2XcDOMsShb
S0twg8Ioeg0EtTfLipHKBG7NuyIZ1gu9hkgFzuEevbEmsIQ-99oIaDOfGcEdAaVHX5p1f2+xNcLJ
VL48iwIFrouuFpLwmPALeLfl+RTah9TRtCFbVafjjRdeAAlho-zg-B9bJixf2VLdOcU2x99K+oNO
qhHsAfjQ+ACjy1LtCFzA5mMRKq2wGmJo5NzRvrWBX9HHSX8Zu9hw1PBuDwXXjBctovcudYBUChCJ
aepzAi2Po3w1N-Gh6N4jKUVTOA8fzhz2+BAgGxkCO9+htqWOJxUfXBI7E7ZRxjGYr-h7yad68dZI
rkUEjYeZzCQt0jYaTmAAJ+9SIqY682aIzq-PuiYA4s9Vv-iiLowqQdcRU+Aw8pp56SQAfcB6jpZH
UmTW2n+K23pUv7BiLZ23KO2sK2y95iz1PNZx+vq+vOvMf6VUJs4KAM-IoeqlzU-vq4GO19-tjpy+
5hpttnduAbHCFa2FwN4je6KkHdvQ-jg4tCUt0Cq-YpB3lHb7c3EJDZwXwxqnkUtEiFBZGQfLp2iH
sbiT7Jksv9FH-SWRmAroKNkpbcR4qvF2KbDiWQk9eg==
-----END SEALED ENVELOPE-----
' localtestfile


