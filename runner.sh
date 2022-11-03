#!/bin/bash
streamlit run app.py &
P1=$!
npm start &
P2=$!
wait $P1 $P2