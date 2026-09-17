#!/bin/bash
INTERVIEW_NUM=$(cat mystery/interview-number-file | grep -oE '[0-9]+')
echo "$INTERVIEW_NUM"
cat "mystery/interview-$INTERVIEW_NUM"
echo "$MAIN_SUSPECT"
