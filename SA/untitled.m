filename = "BASETBL Executive Office Chair [COMFORT].xlsx";
tbl = readtable(filename,'TextType','string');
head(tbl)

str = tbl.TextData;
documents = tokenizedDocument(str);
documents(1:96)
compoundScores = vaderSentimentScores(documents);
compoundScores(1:96)
idx = compoundScores > 0;
strPositive = str(idx);
strNegative = str(~idx);

