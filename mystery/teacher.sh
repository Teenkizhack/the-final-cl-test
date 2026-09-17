#!/bin/bash
if [ -f "mystery/streets/Buckingham_Place" ]; then
BASE="mystery"
elif [ -f "streets/Buckingham_Place" ]; then
BASE="."
elif [ -f "the-final-cl-test/mystery/streets/Buckingham_Place" ]; then
BASE="the-final-cl-test/mystery"
fi
export KEY_INTERVIEW=$(grep "SEE INTERVIEW" "$BASE/streets/Buckingham_Place" | grep -o '[0-9]\+')
echo "$KEY_INTERVIEW"
cat "$BASE/interviews/interview-$KEY_INTERVIEW"
echo "$MAIN_SUSPECT"
