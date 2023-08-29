node --prof app.js
node --prof-process --preprocess -j isolate*.log | flamebearer