#!/bin/sh

errorexit() {
    echo $1
    exit 1
}

LC_ALL=C
LANG=C
LINGUAS=C
export LC_ALL LANG LINGUAS


cp spbi2-orig.pb spbi2.pb ||
    errorexit "could not copy spbi2-orig.pb to spbi2.pb"
    
# run the test
../apps/gsmpb -V -i -s spbi1.pb -d spbi2.pb > testspbi.log

# add new contents of phonebook file to the test log
cat spbi2.pb >> testspbi.log

# check if output differs from what it should be
diff testspbi.log testspbi-output.txt
