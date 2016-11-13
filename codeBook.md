## Data Source
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 


## Scripts that used to create codeBook file called make.CodeBook.R
```javascript
make.codeBook <- function(set) {
      df <- data.frame(
            row.names = NULL,
            column.names = names(set),
            class = sapply(set, class),
            range = sapply(set, function(x)
                  if (class(x) == "factor")
                        paste(levels(x), collapse = " / ")
                  else if (class(x) == "numeric" ||
                           class(x) == "integer")
                        paste(min(x), max(x), sep = "  /  ")
                  else
                        class(x)),
            mean = sapply(set, function(x)
                  if (class(x) == "numeric")
                        mean(x)
                  else
                        "Not available")
      )
      write.table(df, "codeBook.md", sep = " | ")
}
```

## Variable list and properties depends on that

rn  |"column.names" | "class" | "range" | "mean"
|---|---			|---	  |---		|---   |
"1" | "PersonID" | "integer" | "1  /  30" | "Not available"
"2" | "Activities" | "factor" | "LAYING / SITTING / STANDING / WALKING / WALKING_DOWNSTAIRS / WALKING_UPSTAIRS" | "Not available"
"3" | "tBodyAcc-mean()-X" | "numeric" | "0.265130137749216  /  0.281587895671642" | "0.274457037661638"
"4" | "tBodyAcc-mean()-Y" | "numeric" | "-0.0232940871262687  /  -0.014403708822451" | "-0.017791567984486"
"5" | "tBodyAcc-mean()-Z" | "numeric" | "-0.118277180099383  /  -0.0949711475357143" | "-0.108567299655679"
"6" | "tBodyAcc-std()-X" | "numeric" | "-0.787137363888889  /  -0.10438892475" | "-0.581248599616568"
"7" | "tBodyAcc-std()-Y" | "numeric" | "-0.69873479216917  /  -0.0102461790107143" | "-0.473857073903216"
"8" | "tBodyAcc-std()-Z" | "numeric" | "-0.738588327088235  /  -0.116902427035714" | "-0.590388480362591"
"9" | "tGravityAcc-mean()-X" | "numeric" | "0.475323016  /  0.95220845" | "0.681798559645198"
"10" | "tGravityAcc-mean()-Y" | "numeric" | "-0.330026645  /  0.174812965882353" | "-0.00727736969589789"
"11" | "tGravityAcc-mean()-Z" | "numeric" | "-0.161179728291022  /  0.276947228143363" | "0.0840663245788804"
"12" | "tGravityAcc-std()-X" | "numeric" | "-0.980138675796703  /  -0.941245714736842" | "-0.964798883198459"
"13" | "tGravityAcc-std()-Y" | "numeric" | "-0.972505174787234  /  -0.892577652526316" | "-0.953480749693492"
"14" | "tGravityAcc-std()-Z" | "numeric" | "-0.959434177692308  /  -0.874429690055556" | "-0.937187903252202"
"15" | "tBodyAccJerk-mean()-X" | "numeric" | "0.0628772325714286  /  0.104281423896716" | "0.079145197364623"
"16" | "tBodyAccJerk-mean()-Y" | "numeric" | "-0.00154458795223881  /  0.0243084681678571" | "0.00778879200140658"
"17" | "tBodyAccJerk-mean()-Z" | "numeric" | "-0.0259521865934078  /  0.0178740909208738" | "-0.00526477765358689"
"18" | "tBodyAccJerk-std()-X" | "numeric" | "-0.845000271081871  /  -0.156114020335714" | "-0.617487522431855"
"19" | "tBodyAccJerk-std()-Y" | "numeric" | "-0.778038380964912  /  -0.199718153632143" | "-0.581681569270649"
"20" | "tBodyAccJerk-std()-Z" | "numeric" | "-0.886175506608187  /  -0.476050511428571" | "-0.751690223723723"
"21" | "tBodyGyro-mean()-X" | "numeric" | "-0.0701318154561458  /  0.0446095071791045" | "-0.027909928826791"
"22" | "tBodyGyro-mean()-Y" | "numeric" | "-0.124194573607143  /  -0.0471474023101021" | "-0.0771458085259331"
"23" | "tBodyGyro-mean()-Z" | "numeric" | "0.0539935059407821  /  0.11224704484791" | "0.087086137942875"
"24" | "tBodyGyro-std()-X" | "numeric" | "-0.841458331660377  /  -0.352327987776119" | "-0.699812862637531"
"25" | "tBodyGyro-std()-Y" | "numeric" | "-0.81201447497076  /  -0.0722302850357143" | "-0.656655342435497"
"26" | "tBodyGyro-std()-Z" | "numeric" | "-0.803762797404906  /  -0.264048974032143" | "-0.633366123640708"
"27" | "tBodyGyroJerk-mean()-X" | "numeric" | "-0.121134045164286  /  -0.0731134377315625" | "-0.0982229225073514"
"28" | "tBodyGyroJerk-mean()-Y" | "numeric" | "-0.0704164515642857  /  -0.0345947722803922" | "-0.0427675096181558"
"29" | "tBodyGyroJerk-mean()-Z" | "numeric" | "-0.0621959093526344  /  -0.0169168070785714" | "-0.0538228953228931"
"30" | "tBodyGyroJerk-std()-X" | "numeric" | "-0.863912821132075  /  -0.508540971940298" | "-0.714032012583882"
"31" | "tBodyGyroJerk-std()-Y" | "numeric" | "-0.92376429619883  /  -0.389002888178571" | "-0.772230522422462"
"32" | "tBodyGyroJerk-std()-Z" | "numeric" | "-0.871264414301887  /  -0.383401011071429" | "-0.722330210296292"
"33" | "tBodyAccMag-mean()" | "numeric" | "-0.686476820794717  /  -0.0140828025671429" | "-0.517958920850835"
"34" | "tBodyAccMag-std()" | "numeric" | "-0.734866170311698  /  -0.101515471785714" | "-0.566667545314157"
"35" | "tGravityAccMag-mean()" | "numeric" | "-0.686476820794717  /  -0.0140828025671429" | "-0.517958920850835"
"36" | "tGravityAccMag-std()" | "numeric" | "-0.734866170311698  /  -0.101515471785714" | "-0.566667545314157"
"37" | "tBodyAccJerkMag-mean()" | "numeric" | "-0.830168934298246  /  -0.219716752860714" | "-0.627323357611337"
"38" | "tBodyAccJerkMag-std()" | "numeric" | "-0.826901775204678  /  -0.173363865521429" | "-0.606980303511527"
"39" | "tBodyGyroMag-mean()" | "numeric" | "-0.764675748217547  /  -0.0916624324642857" | "-0.57518599233149"
"40" | "tBodyGyroMag-std()" | "numeric" | "-0.828039129471698  /  -0.204749539785714" | "-0.63757644602255"
"41" | "tBodyGyroJerkMag-mean()" | "numeric" | "-0.882302748976608  /  -0.405708505357143" | "-0.745681061328232"
"42" | "tBodyGyroJerkMag-std()" | "numeric" | "-0.902127701491228  /  -0.461512406071429" | "-0.764516936737949"
"43" | "fBodyAcc-mean()-X" | "numeric" | "-0.809614156959064  /  -0.113658525846429" | "-0.598344845992404"
"44" | "fBodyAcc-mean()-Y" | "numeric" | "-0.71776713364234  /  -0.0742782819" | "-0.505351413581913"
"45" | "fBodyAcc-mean()-Z" | "numeric" | "-0.778129476754386  /  -0.296473813678571" | "-0.648409685041022"
"46" | "fBodyAcc-std()-X" | "numeric" | "-0.779480419415205  /  -0.103948089932143" | "-0.576153616728399"
"47" | "fBodyAcc-std()-Y" | "numeric" | "-0.707786998338491  /  -0.0455758867178571" | "-0.49241948627004"
"48" | "fBodyAcc-std()-Z" | "numeric" | "-0.753200784692157  /  -0.112452208571429" | "-0.594387870317382"
"49" | "fBodyAcc-meanFreq()-X" | "numeric" | "-0.497235523358209  /  -0.106763418901788" | "-0.232234018842067"
"50" | "fBodyAcc-meanFreq()-Y" | "numeric" | "-0.253491712955224  /  0.128076957523023" | "0.00877440449318358"
"51" | "fBodyAcc-meanFreq()-Z" | "numeric" | "-0.260071893656716  /  0.160383893888278" | "0.0377261650797201"
"52" | "fBodyAccJerk-mean()-X" | "numeric" | "-0.851328086169591  /  -0.184777986714286" | "-0.635880170184373"
"53" | "fBodyAccJerk-mean()-Y" | "numeric" | "-0.792166122660819  /  -0.22808852075" | "-0.604883909980912"
"54" | "fBodyAccJerk-mean()-Z" | "numeric" | "-0.877055875847953  /  -0.434256061428571" | "-0.731603360365742"
"55" | "fBodyAccJerk-std()-X" | "numeric" | "-0.852442084853801  /  -0.202478678509643" | "-0.63321918612422"
"56" | "fBodyAccJerk-std()-Y" | "numeric" | "-0.777826411520468  /  -0.224905915296429" | "-0.585329242147413"
"57" | "fBodyAccJerk-std()-Z" | "numeric" | "-0.893968784502924  /  -0.516095982857143" | "-0.770644470609752"
"58" | "fBodyAccJerk-meanFreq()-X" | "numeric" | "-0.358419952002985  /  0.10033073802451" | "-0.0638693032055394"
"59" | "fBodyAccJerk-meanFreq()-Y" | "numeric" | "-0.592881836119403  /  -0.0815611305061628" | "-0.227604762075169"
"60" | "fBodyAccJerk-meanFreq()-Z" | "numeric" | "-0.465823000880597  /  0.0112385060119048" | "-0.134729567875778"
"61" | "fBodyGyro-mean()-X" | "numeric" | "-0.824027081279245  /  -0.308711959208955" | "-0.64891905357814"
"62" | "fBodyGyro-mean()-Y" | "numeric" | "-0.85574348497076  /  -0.186405372785714" | "-0.685074448379252"
"63" | "fBodyGyro-mean()-Z" | "numeric" | "-0.811119726490566  /  -0.178911898535714" | "-0.621199692007261"
"64" | "fBodyGyro-std()-X" | "numeric" | "-0.848030070792453  /  -0.372271685656716" | "-0.717925874665762"
"65" | "fBodyGyro-std()-Y" | "numeric" | "-0.810337474226415  /  -0.0339426658214286" | "-0.646260324942744"
"66" | "fBodyGyro-std()-Z" | "numeric" | "-0.819769971150943  /  -0.362665404285714" | "-0.672939566445092"
"67" | "fBodyGyro-meanFreq()-X" | "numeric" | "-0.319921454716418  /  0.0289087194733538" | "-0.108157512444156"
"68" | "fBodyGyro-meanFreq()-Y" | "numeric" | "-0.438329323249104  /  -0.0427900206246154" | "-0.175446574330681"
"69" | "fBodyGyro-meanFreq()-Z" | "numeric" | "-0.229658512152239  /  0.130322272915873" | "-0.0530350471260977"
"70" | "fBodyAccMag-mean()" | "numeric" | "-0.756372819397661  /  -0.06760317325" | "-0.560633157804676"
"71" | "fBodyAccMag-std()" | "numeric" | "-0.773237749395849  /  -0.264349880378571" | "-0.639333660121134"
"72" | "fBodyAccMag-meanFreq()" | "numeric" | "-0.146913785820896  /  0.192199738218212" | "0.0731588984994969"
"73" | "fBodyBodyAccJerkMag-mean()" | "numeric" | "-0.828189280994152  /  -0.119701861678571" | "-0.598382614461705"
"74" | "fBodyBodyAccJerkMag-std()" | "numeric" | "-0.826006345409357  /  -0.254298875903571" | "-0.621856389122625"
"75" | "fBodyBodyAccJerkMag-meanFreq()" | "numeric" | "0.0497346350314563  /  0.281171213758491" | "0.167412363998604"
"76" | "fBodyBodyGyroMag-mean()" | "numeric" | "-0.831350432716981  /  -0.248337149392857" | "-0.674790675028881"
"77" | "fBodyBodyGyroMag-std()" | "numeric" | "-0.857834029660377  /  -0.324706683214286" | "-0.678030467572504"
"78" | "fBodyBodyGyroMag-meanFreq()" | "numeric" | "-0.229709713507463  /  0.157159054428571" | "-0.0369932758459352"
"79" | "fBodyBodyGyroJerkMag-mean()" | "numeric" | "-0.905391691608187  /  -0.435965402464286" | "-0.765210011827815"
"80" | "fBodyBodyGyroJerkMag-std()" | "numeric" | "-0.904819432807017  /  -0.537559601428571" | "-0.781206479029966"
"81" | "fBodyBodyGyroJerkMag-meanFreq()" | "numeric" | "-0.0470207701531343  /  0.281467707390189" | "0.128476772437182"
"82" | "angle(tBodyAccMean,gravity)" | "numeric" | "-0.0268406573846269  /  0.0980291871428571" | "0.00881446279209562"
"83" | "angle(tBodyAccJerkMean),gravityMean)" | "numeric" | "-0.0674796352050279  /  0.065914924894152" | "0.00142852902014431"
"84" | "angle(tBodyGyroMean,gravityMean)" | "numeric" | "-0.126657072537313  /  0.118881574046188" | "0.0149589048404059"
"85" | "angle(tBodyGyroJerkMean,gravityMean)" | "numeric" | "-0.06449492227475  /  0.052032163887415" | "-0.00826343949481982"
"86" | "angle(X,gravityMean)" | "numeric" | "-0.834149160597015  /  -0.297667818083333" | "-0.507020419055425"
"87" | "angle(Y,gravityMean)" | "numeric" | "-0.0775312304117647  /  0.3118302675" | "0.071009528238143"
"88" | "angle(Z,gravityMean)" | "numeric" | "-0.188573808675731  /  0.121501628916409" | "-0.0481057468830809"
