#!/bin/bash -ex
: ${SRC_DIR:=/data/src}
: ${ROOT_DIR:=$(dirname $0)}
: ${BIN_DIR:=/data/bin}

main(){

	git show -s --format=%ct HEAD >$ROOT_DIR/commit-ts.txt
	# well known

	cat >vcs.xml <<EOF
<entry>
  <version>$(date +%Y-%m-%d)-$(git rev-parse HEAD)</version>
  <url>com.sushi.vcs</url>
</entry>
EOF
	# Binaries
	echo *.xml ident >.gitattributes
	echo commits $Id$ >vcs.xml
	git hash-object --no-filters vcs.xml

	#$REPO_REPRODUCIBLE=dev ./tools/buildall.sh . $BIN_DIR HEAD

}
main
