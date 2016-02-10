#!/bin/sh

set -e

BUILD_DATE=2016-02-06
BASE_NAME=rust-nightly-x86_64-unknown-linux-gnu

which curl >/dev/null || (echo "CURL is required." && exit 1)

FILE=${BASE_NAME}.tar.gz

cd docker
rm -f ${FILE}*

curl "https://static.rust-lang.org/dist/${BUILD_DATE}/${FILE}.sha256" > ${FILE}.sha256
curl "https://static.rust-lang.org/dist/${BUILD_DATE}/${FILE}" > ${FILE}
sha256sum -c ${FILE}.sha256

echo ""
echo "Successfully downloaded ${FILE}"
echo ""
