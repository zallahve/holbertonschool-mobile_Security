.class Landroidx/core/location/LocationCompat$Api28Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static removeBearingAccuracy(Landroid/location/Location;)V
    .locals 25
    .param p0, "location"    # Landroid/location/Location;

    .line 746
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    return-void

    .line 753
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 755
    .local v2, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 756
    .local v4, "elapsedRealtimeNs":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 757
    .local v6, "latitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 758
    .local v8, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 759
    .local v10, "hasAltitude":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 760
    .local v11, "altitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 761
    .local v13, "hasSpeed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 762
    .local v14, "speed":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 763
    .local v15, "hasBearing":Z
    move/from16 v16, v15

    .end local v15    # "hasBearing":Z
    .local v16, "hasBearing":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 764
    .local v15, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 765
    .local v17, "hasAccuracy":Z
    move/from16 v18, v15

    .end local v15    # "bearing":F
    .local v18, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 766
    .local v15, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    .line 767
    .local v19, "hasVerticalAccuracy":Z
    move/from16 v20, v15

    .end local v15    # "accuracy":F
    .local v20, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 768
    .local v15, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v21

    .line 769
    .local v21, "hasSpeedAccuracy":Z
    move/from16 v22, v15

    .end local v15    # "verticalAccuracy":F
    .local v22, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    .line 770
    .local v15, "speedAccuracy":F
    move/from16 v23, v15

    .end local v15    # "speedAccuracy":F
    .local v23, "speedAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 772
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 773
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 775
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 776
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 777
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 778
    if-eqz v10, :cond_1

    .line 779
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    .line 781
    :cond_1
    if-eqz v13, :cond_2

    .line 782
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    .line 784
    :cond_2
    if-eqz v16, :cond_3

    .line 785
    move-object/from16 v24, v1

    move/from16 v1, v18

    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .local v24, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_0

    .line 784
    .end local v24    # "provider":Ljava/lang/String;
    .local v1, "provider":Ljava/lang/String;
    .restart local v18    # "bearing":F
    :cond_3
    move-object/from16 v24, v1

    move/from16 v1, v18

    .line 787
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v24    # "provider":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_4

    .line 788
    move/from16 v18, v1

    move/from16 v1, v20

    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 787
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v20    # "accuracy":F
    :cond_4
    move/from16 v18, v1

    move/from16 v1, v20

    .line 790
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    :goto_1
    if-eqz v19, :cond_5

    .line 791
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_2

    .line 790
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v22    # "verticalAccuracy":F
    :cond_5
    move/from16 v20, v1

    move/from16 v1, v22

    .line 793
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    :goto_2
    if-eqz v21, :cond_6

    .line 794
    move/from16 v22, v1

    move/from16 v1, v23

    .end local v23    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_3

    .line 793
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v23    # "speedAccuracy":F
    :cond_6
    move/from16 v22, v1

    move/from16 v1, v23

    .line 796
    .end local v23    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    :goto_3
    if-eqz v15, :cond_7

    .line 797
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 799
    :cond_7
    return-void
.end method

.method static removeSpeedAccuracy(Landroid/location/Location;)V
    .locals 25
    .param p0, "location"    # Landroid/location/Location;

    .line 690
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    return-void

    .line 697
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 699
    .local v2, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 700
    .local v4, "elapsedRealtimeNs":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 701
    .local v6, "latitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 702
    .local v8, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 703
    .local v10, "hasAltitude":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 704
    .local v11, "altitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 705
    .local v13, "hasSpeed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 706
    .local v14, "speed":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 707
    .local v15, "hasBearing":Z
    move/from16 v16, v15

    .end local v15    # "hasBearing":Z
    .local v16, "hasBearing":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 708
    .local v15, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 709
    .local v17, "hasAccuracy":Z
    move/from16 v18, v15

    .end local v15    # "bearing":F
    .local v18, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 710
    .local v15, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    .line 711
    .local v19, "hasVerticalAccuracy":Z
    move/from16 v20, v15

    .end local v15    # "accuracy":F
    .local v20, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 712
    .local v15, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    .line 713
    .local v21, "hasBearingAccuracy":Z
    move/from16 v22, v15

    .end local v15    # "verticalAccuracy":F
    .local v22, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    .line 714
    .local v15, "bearingAccuracy":F
    move/from16 v23, v15

    .end local v15    # "bearingAccuracy":F
    .local v23, "bearingAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 716
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 717
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 719
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 720
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 721
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 722
    if-eqz v10, :cond_1

    .line 723
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    .line 725
    :cond_1
    if-eqz v13, :cond_2

    .line 726
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    .line 728
    :cond_2
    if-eqz v16, :cond_3

    .line 729
    move-object/from16 v24, v1

    move/from16 v1, v18

    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .local v24, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_0

    .line 728
    .end local v24    # "provider":Ljava/lang/String;
    .local v1, "provider":Ljava/lang/String;
    .restart local v18    # "bearing":F
    :cond_3
    move-object/from16 v24, v1

    move/from16 v1, v18

    .line 731
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v24    # "provider":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_4

    .line 732
    move/from16 v18, v1

    move/from16 v1, v20

    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 731
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v20    # "accuracy":F
    :cond_4
    move/from16 v18, v1

    move/from16 v1, v20

    .line 734
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    :goto_1
    if-eqz v19, :cond_5

    .line 735
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_2

    .line 734
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v22    # "verticalAccuracy":F
    :cond_5
    move/from16 v20, v1

    move/from16 v1, v22

    .line 737
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    :goto_2
    if-eqz v21, :cond_6

    .line 738
    move/from16 v22, v1

    move/from16 v1, v23

    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_3

    .line 737
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v23    # "bearingAccuracy":F
    :cond_6
    move/from16 v22, v1

    move/from16 v1, v23

    .line 740
    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    :goto_3
    if-eqz v15, :cond_7

    .line 741
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 743
    :cond_7
    return-void
.end method

.method static removeVerticalAccuracy(Landroid/location/Location;)V
    .locals 25
    .param p0, "location"    # Landroid/location/Location;

    .line 634
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    return-void

    .line 641
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 643
    .local v2, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 644
    .local v4, "elapsedRealtimeNs":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 645
    .local v6, "latitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 646
    .local v8, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 647
    .local v10, "hasAltitude":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 648
    .local v11, "altitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 649
    .local v13, "hasSpeed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 650
    .local v14, "speed":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 651
    .local v15, "hasBearing":Z
    move/from16 v16, v15

    .end local v15    # "hasBearing":Z
    .local v16, "hasBearing":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 652
    .local v15, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 653
    .local v17, "hasAccuracy":Z
    move/from16 v18, v15

    .end local v15    # "bearing":F
    .local v18, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 654
    .local v15, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v19

    .line 655
    .local v19, "hasSpeedAccuracy":Z
    move/from16 v20, v15

    .end local v15    # "accuracy":F
    .local v20, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    .line 656
    .local v15, "speedAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    .line 657
    .local v21, "hasBearingAccuracy":Z
    move/from16 v22, v15

    .end local v15    # "speedAccuracy":F
    .local v22, "speedAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    .line 658
    .local v15, "bearingAccuracy":F
    move/from16 v23, v15

    .end local v15    # "bearingAccuracy":F
    .local v23, "bearingAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 660
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 661
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 663
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 664
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 665
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 666
    if-eqz v10, :cond_1

    .line 667
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    .line 669
    :cond_1
    if-eqz v13, :cond_2

    .line 670
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    .line 672
    :cond_2
    if-eqz v16, :cond_3

    .line 673
    move-object/from16 v24, v1

    move/from16 v1, v18

    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .local v24, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_0

    .line 672
    .end local v24    # "provider":Ljava/lang/String;
    .local v1, "provider":Ljava/lang/String;
    .restart local v18    # "bearing":F
    :cond_3
    move-object/from16 v24, v1

    move/from16 v1, v18

    .line 675
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v24    # "provider":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_4

    .line 676
    move/from16 v18, v1

    move/from16 v1, v20

    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 675
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v20    # "accuracy":F
    :cond_4
    move/from16 v18, v1

    move/from16 v1, v20

    .line 678
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    :goto_1
    if-eqz v19, :cond_5

    .line 679
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v20    # "accuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    goto :goto_2

    .line 678
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v22    # "speedAccuracy":F
    :cond_5
    move/from16 v20, v1

    move/from16 v1, v22

    .line 681
    .end local v22    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v20    # "accuracy":F
    :goto_2
    if-eqz v21, :cond_6

    .line 682
    move/from16 v22, v1

    move/from16 v1, v23

    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "speedAccuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_3

    .line 681
    .end local v22    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v23    # "bearingAccuracy":F
    :cond_6
    move/from16 v22, v1

    move/from16 v1, v23

    .line 684
    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "speedAccuracy":F
    :goto_3
    if-eqz v15, :cond_7

    .line 685
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 687
    :cond_7
    return-void
.end method
