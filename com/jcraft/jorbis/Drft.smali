.class Lcom/jcraft/jorbis/Drft;
.super Ljava/lang/Object;
.source "Drft.java"


# static fields
.field static hsqt2:F

.field static ntryh:[I

.field static sqrt2:F

.field static taui:F

.field static taur:F

.field static tpi:F


# instance fields
.field n:I

.field splitcache:[I

.field trigcache:[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 54
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Drft;->ntryh:[I

    .line 55
    const v0, 0x40c90fdb

    sput v0, Lcom/jcraft/jorbis/Drft;->tpi:F

    .line 56
    const v0, 0x3f3504f3

    sput v0, Lcom/jcraft/jorbis/Drft;->hsqt2:F

    .line 57
    const v0, 0x3f5db3d7

    sput v0, Lcom/jcraft/jorbis/Drft;->taui:F

    .line 58
    const/high16 v0, -0x41000000  # -0.5f

    sput v0, Lcom/jcraft/jorbis/Drft;->taur:F

    .line 59
    const v0, 0x3fb504f3

    sput v0, Lcom/jcraft/jorbis/Drft;->sqrt2:F

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dradb2(II[F[F[FI)V
    .registers 24
    .param p0, "ido"  # I
    .param p1, "l1"  # I
    .param p2, "cc"  # [F
    .param p3, "ch"  # [F
    .param p4, "wa1"  # [F
    .param p5, "index"  # I

    .line 707
    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    .line 709
    .local v2, "t0":I
    const/4 v3, 0x0

    .line 710
    .local v3, "t1":I
    const/4 v4, 0x0

    .line 711
    .local v4, "t2":I
    shl-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 712
    .local v5, "t3":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_d
    if-ge v7, v1, :cond_2b

    .line 713
    aget v8, p2, v4

    add-int v9, v5, v4

    aget v9, p2, v9

    add-float/2addr v8, v9

    aput v8, p3, v3

    .line 714
    add-int v8, v3, v2

    aget v9, p2, v4

    add-int v10, v5, v4

    aget v10, p2, v10

    sub-float/2addr v9, v10

    aput v9, p3, v8

    .line 715
    add-int v8, v3, v0

    move v3, v8

    shl-int/lit8 v4, v8, 0x1

    .line 712
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 718
    :cond_2b
    const/4 v8, 0x2

    if-ge v0, v8, :cond_2f

    .line 719
    return-void

    .line 720
    :cond_2f
    if-eq v0, v8, :cond_a2

    .line 721
    const/4 v3, 0x0

    .line 722
    const/4 v4, 0x0

    .line 723
    const/4 v7, 0x0

    :goto_34
    if-ge v7, v1, :cond_9d

    .line 724
    move v5, v3

    .line 725
    move v9, v4

    .local v9, "t4":I
    shl-int/lit8 v10, v0, 0x1

    add-int/2addr v10, v4

    .line 726
    .local v10, "t5":I
    add-int v11, v2, v3

    .line 727
    .local v11, "t6":I
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_3e
    if-ge v12, v0, :cond_95

    .line 728
    add-int/lit8 v5, v5, 0x2

    .line 729
    add-int/lit8 v9, v9, 0x2

    .line 730
    add-int/lit8 v10, v10, -0x2

    .line 731
    add-int/lit8 v11, v11, 0x2

    .line 732
    add-int/lit8 v13, v5, -0x1

    add-int/lit8 v14, v9, -0x1

    aget v14, p2, v14

    add-int/lit8 v15, v10, -0x1

    aget v15, p2, v15

    add-float/2addr v14, v15

    aput v14, p3, v13

    .line 733
    add-int/lit8 v13, v9, -0x1

    aget v13, p2, v13

    add-int/lit8 v14, v10, -0x1

    aget v14, p2, v14

    sub-float/2addr v13, v14

    .line 734
    .local v13, "tr2":F
    aget v14, p2, v9

    aget v15, p2, v10

    sub-float/2addr v14, v15

    aput v14, p3, v5

    .line 735
    aget v14, p2, v9

    aget v15, p2, v10

    add-float/2addr v14, v15

    .line 736
    .local v14, "ti2":F
    add-int/lit8 v15, v11, -0x1

    add-int v16, p5, v12

    add-int/lit8 v16, v16, -0x2

    aget v16, p4, v16

    mul-float v16, v16, v13

    add-int v17, p5, v12

    add-int/lit8 v17, v17, -0x1

    aget v17, p4, v17

    mul-float v17, v17, v14

    sub-float v16, v16, v17

    aput v16, p3, v15

    .line 737
    add-int v15, p5, v12

    sub-int/2addr v15, v8

    aget v15, p4, v15

    mul-float/2addr v15, v14

    add-int v16, p5, v12

    add-int/lit8 v16, v16, -0x1

    aget v16, p4, v16

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, p3, v11

    .line 727
    add-int/lit8 v12, v12, 0x2

    goto :goto_3e

    .line 739
    .end local v13  # "tr2":F
    .end local v14  # "ti2":F
    :cond_95
    add-int v13, v3, v0

    move v3, v13

    shl-int/lit8 v4, v13, 0x1

    .line 723
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 741
    .end local v9  # "t4":I
    .end local v10  # "t5":I
    .end local v11  # "t6":I
    .end local v12  # "i":I
    :cond_9d
    rem-int/lit8 v8, v0, 0x2

    if-ne v8, v6, :cond_a2

    .line 742
    return-void

    .line 745
    :cond_a2
    add-int/lit8 v3, v0, -0x1

    .line 746
    add-int/lit8 v4, v0, -0x1

    .line 747
    const/4 v6, 0x0

    .end local v7  # "k":I
    .local v6, "k":I
    :goto_a7
    if-ge v6, v1, :cond_c5

    .line 748
    aget v7, p2, v4

    aget v8, p2, v4

    add-float/2addr v7, v8

    aput v7, p3, v3

    .line 749
    add-int v7, v3, v2

    add-int/lit8 v8, v4, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v4, 0x1

    aget v9, p2, v9

    add-float/2addr v8, v9

    neg-float v8, v8

    aput v8, p3, v7

    .line 750
    add-int/2addr v3, v0

    .line 751
    shl-int/lit8 v7, v0, 0x1

    add-int/2addr v4, v7

    .line 747
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 753
    :cond_c5
    return-void
.end method

.method static dradb3(II[F[F[FI[FI)V
    .registers 37
    .param p0, "ido"  # I
    .param p1, "l1"  # I
    .param p2, "cc"  # [F
    .param p3, "ch"  # [F
    .param p4, "wa1"  # [F
    .param p5, "index1"  # I
    .param p6, "wa2"  # [F
    .param p7, "index2"  # I

    .line 759
    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    .line 761
    .local v2, "t0":I
    const/4 v3, 0x0

    .line 762
    .local v3, "t1":I
    shl-int/lit8 v4, v2, 0x1

    .line 763
    .local v4, "t2":I
    shl-int/lit8 v5, v0, 0x1

    .line 764
    .local v5, "t3":I
    shl-int/lit8 v6, v0, 0x1

    add-int/2addr v6, v0

    .line 765
    .local v6, "t4":I
    const/4 v7, 0x0

    .line 766
    .local v7, "t5":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_10
    if-ge v8, v1, :cond_40

    .line 767
    add-int/lit8 v9, v5, -0x1

    aget v9, p2, v9

    add-int/lit8 v10, v5, -0x1

    aget v10, p2, v10

    add-float/2addr v9, v10

    .line 768
    .local v9, "tr2":F
    aget v10, p2, v7

    sget v11, Lcom/jcraft/jorbis/Drft;->taur:F

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    .line 769
    .local v10, "cr2":F
    aget v11, p2, v7

    add-float/2addr v11, v9

    aput v11, p3, v3

    .line 770
    sget v11, Lcom/jcraft/jorbis/Drft;->taui:F

    aget v12, p2, v5

    aget v13, p2, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    .line 771
    .local v11, "ci3":F
    add-int v12, v3, v2

    sub-float v13, v10, v11

    aput v13, p3, v12

    .line 772
    add-int v12, v3, v4

    add-float v13, v10, v11

    aput v13, p3, v12

    .line 773
    add-int/2addr v3, v0

    .line 774
    add-int/2addr v5, v6

    .line 775
    add-int/2addr v7, v6

    .line 766
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 778
    .end local v9  # "tr2":F
    .end local v10  # "cr2":F
    .end local v11  # "ci3":F
    :cond_40
    const/4 v9, 0x1

    if-ne v0, v9, :cond_44

    .line 779
    return-void

    .line 781
    :cond_44
    const/4 v3, 0x0

    .line 782
    shl-int/lit8 v5, v0, 0x1

    .line 783
    const/4 v8, 0x0

    :goto_48
    if-ge v8, v1, :cond_113

    .line 784
    shl-int/lit8 v10, v3, 0x1

    add-int/2addr v10, v3

    .line 785
    .local v10, "t7":I
    add-int v11, v10, v5

    move v7, v11

    .line 786
    .local v11, "t6":I
    move v12, v3

    .line 787
    .local v12, "t8":I
    add-int v13, v3, v2

    move v14, v13

    .local v14, "t9":I
    add-int/2addr v13, v2

    .line 789
    .local v13, "t10":I
    const/4 v15, 0x2

    .local v15, "i":I
    :goto_56
    if-ge v15, v0, :cond_10e

    .line 790
    add-int/lit8 v7, v7, 0x2

    .line 791
    add-int/lit8 v11, v11, -0x2

    .line 792
    add-int/lit8 v10, v10, 0x2

    .line 793
    add-int/lit8 v12, v12, 0x2

    .line 794
    add-int/lit8 v14, v14, 0x2

    .line 795
    add-int/lit8 v13, v13, 0x2

    .line 796
    add-int/lit8 v16, v7, -0x1

    aget v16, p2, v16

    add-int/lit8 v17, v11, -0x1

    aget v17, p2, v17

    add-float v16, v16, v17

    .line 797
    .local v16, "tr2":F
    add-int/lit8 v17, v10, -0x1

    aget v17, p2, v17

    sget v18, Lcom/jcraft/jorbis/Drft;->taur:F

    mul-float v18, v18, v16

    add-float v17, v17, v18

    .line 798
    .local v17, "cr2":F
    add-int/lit8 v18, v12, -0x1

    add-int/lit8 v19, v10, -0x1

    aget v19, p2, v19

    add-float v19, v19, v16

    aput v19, p3, v18

    .line 799
    aget v18, p2, v7

    aget v19, p2, v11

    sub-float v18, v18, v19

    .line 800
    .local v18, "ti2":F
    aget v19, p2, v10

    sget v20, Lcom/jcraft/jorbis/Drft;->taur:F

    mul-float v20, v20, v18

    add-float v19, v19, v20

    .line 801
    .local v19, "ci2":F
    aget v20, p2, v10

    add-float v20, v20, v18

    aput v20, p3, v12

    .line 802
    sget v20, Lcom/jcraft/jorbis/Drft;->taui:F

    add-int/lit8 v21, v7, -0x1

    aget v21, p2, v21

    add-int/lit8 v22, v11, -0x1

    aget v22, p2, v22

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    .line 803
    .local v20, "cr3":F
    sget v21, Lcom/jcraft/jorbis/Drft;->taui:F

    aget v22, p2, v7

    aget v23, p2, v11

    add-float v22, v22, v23

    mul-float v21, v21, v22

    .line 804
    .local v21, "ci3":F
    sub-float v22, v17, v21

    .line 805
    .local v22, "dr2":F
    add-float v23, v17, v21

    .line 806
    .local v23, "dr3":F
    add-float v24, v19, v20

    .line 807
    .local v24, "di2":F
    sub-float v25, v19, v20

    .line 808
    .local v25, "di3":F
    add-int/lit8 v26, v14, -0x1

    add-int v27, p5, v15

    add-int/lit8 v27, v27, -0x2

    aget v27, p4, v27

    mul-float v27, v27, v22

    add-int v28, p5, v15

    add-int/lit8 v28, v28, -0x1

    aget v28, p4, v28

    mul-float v28, v28, v24

    sub-float v27, v27, v28

    aput v27, p3, v26

    .line 809
    add-int v26, p5, v15

    add-int/lit8 v26, v26, -0x2

    aget v26, p4, v26

    mul-float v26, v26, v24

    add-int v27, p5, v15

    add-int/lit8 v27, v27, -0x1

    aget v27, p4, v27

    mul-float v27, v27, v22

    add-float v26, v26, v27

    aput v26, p3, v14

    .line 810
    add-int/lit8 v26, v13, -0x1

    add-int v27, p7, v15

    add-int/lit8 v27, v27, -0x2

    aget v27, p6, v27

    mul-float v27, v27, v23

    add-int v28, p7, v15

    add-int/lit8 v28, v28, -0x1

    aget v28, p6, v28

    mul-float v28, v28, v25

    sub-float v27, v27, v28

    aput v27, p3, v26

    .line 811
    add-int v26, p7, v15

    add-int/lit8 v26, v26, -0x2

    aget v26, p6, v26

    mul-float v26, v26, v25

    add-int v27, p7, v15

    add-int/lit8 v27, v27, -0x1

    aget v27, p6, v27

    mul-float v27, v27, v23

    add-float v26, v26, v27

    aput v26, p3, v13

    .line 789
    add-int/lit8 v15, v15, 0x2

    goto/16 :goto_56

    .line 813
    .end local v16  # "tr2":F
    .end local v17  # "cr2":F
    .end local v18  # "ti2":F
    .end local v19  # "ci2":F
    .end local v20  # "cr3":F
    .end local v21  # "ci3":F
    .end local v22  # "dr2":F
    .end local v23  # "dr3":F
    .end local v24  # "di2":F
    .end local v25  # "di3":F
    :cond_10e
    add-int/2addr v3, v0

    .line 783
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_48

    .line 815
    .end local v10  # "t7":I
    .end local v11  # "t6":I
    .end local v12  # "t8":I
    .end local v13  # "t10":I
    .end local v14  # "t9":I
    .end local v15  # "i":I
    :cond_113
    return-void
.end method

.method static dradb4(II[F[F[FI[FI[FI)V
    .registers 42
    .param p0, "ido"  # I
    .param p1, "l1"  # I
    .param p2, "cc"  # [F
    .param p3, "ch"  # [F
    .param p4, "wa1"  # [F
    .param p5, "index1"  # I
    .param p6, "wa2"  # [F
    .param p7, "index2"  # I
    .param p8, "wa3"  # [F
    .param p9, "index3"  # I

    .line 821
    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    .line 823
    .local v2, "t0":I
    const/4 v3, 0x0

    .line 824
    .local v3, "t1":I
    shl-int/lit8 v4, v0, 0x2

    .line 825
    .local v4, "t2":I
    const/4 v5, 0x0

    .line 826
    .local v5, "t3":I
    shl-int/lit8 v6, v0, 0x1

    .line 827
    .local v6, "t6":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_d
    const/4 v8, 0x1

    if-ge v7, v1, :cond_4f

    .line 828
    add-int v9, v5, v6

    .line 829
    .local v9, "t4":I
    move v10, v3

    .line 830
    .local v10, "t5":I
    add-int/lit8 v11, v9, -0x1

    aget v11, p2, v11

    add-int/lit8 v12, v9, -0x1

    aget v12, p2, v12

    add-float/2addr v11, v12

    .line 831
    .local v11, "tr3":F
    aget v12, p2, v9

    aget v13, p2, v9

    add-float/2addr v12, v13

    .line 832
    .local v12, "tr4":F
    aget v13, p2, v5

    add-int v14, v9, v6

    move v9, v14

    sub-int/2addr v14, v8

    aget v8, p2, v14

    sub-float/2addr v13, v8

    .line 833
    .local v13, "tr1":F
    aget v8, p2, v5

    add-int/lit8 v14, v9, -0x1

    aget v14, p2, v14

    add-float/2addr v8, v14

    .line 834
    .local v8, "tr2":F
    add-float v14, v8, v11

    aput v14, p3, v10

    .line 835
    add-int v14, v10, v2

    move v10, v14

    sub-float v15, v13, v12

    aput v15, p3, v14

    .line 836
    add-int v14, v10, v2

    move v10, v14

    sub-float v15, v8, v11

    aput v15, p3, v14

    .line 837
    add-int v14, v10, v2

    move v10, v14

    add-float v15, v13, v12

    aput v15, p3, v14

    .line 838
    add-int/2addr v3, v0

    .line 839
    add-int/2addr v5, v4

    .line 827
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 842
    .end local v8  # "tr2":F
    .end local v9  # "t4":I
    .end local v10  # "t5":I
    .end local v11  # "tr3":F
    .end local v12  # "tr4":F
    .end local v13  # "tr1":F
    :cond_4f
    const/4 v9, 0x2

    if-ge v0, v9, :cond_53

    .line 843
    return-void

    .line 844
    :cond_53
    if-eq v0, v9, :cond_15b

    .line 845
    const/4 v3, 0x0

    .line 846
    const/4 v7, 0x0

    :goto_57
    if-ge v7, v1, :cond_156

    .line 847
    shl-int/lit8 v10, v3, 0x2

    move v4, v10

    add-int/2addr v10, v6

    move v5, v10

    move v11, v10

    .local v11, "t4":I
    add-int/2addr v10, v6

    .line 848
    .restart local v10  # "t5":I
    move v12, v3

    .line 849
    .local v12, "t7":I
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_62
    if-ge v13, v0, :cond_151

    .line 850
    add-int/lit8 v4, v4, 0x2

    .line 851
    add-int/lit8 v5, v5, 0x2

    .line 852
    add-int/lit8 v11, v11, -0x2

    .line 853
    add-int/lit8 v10, v10, -0x2

    .line 854
    add-int/lit8 v12, v12, 0x2

    .line 855
    aget v14, p2, v4

    aget v15, p2, v10

    add-float/2addr v14, v15

    .line 856
    .local v14, "ti1":F
    aget v15, p2, v4

    aget v16, p2, v10

    sub-float v15, v15, v16

    .line 857
    .local v15, "ti2":F
    aget v16, p2, v5

    aget v17, p2, v11

    sub-float v16, v16, v17

    .line 858
    .local v16, "ti3":F
    aget v17, p2, v5

    aget v18, p2, v11

    add-float v17, v17, v18

    .line 859
    .local v17, "tr4":F
    add-int/lit8 v18, v4, -0x1

    aget v18, p2, v18

    add-int/lit8 v19, v10, -0x1

    aget v19, p2, v19

    sub-float v18, v18, v19

    .line 860
    .local v18, "tr1":F
    add-int/lit8 v19, v4, -0x1

    aget v19, p2, v19

    add-int/lit8 v20, v10, -0x1

    aget v20, p2, v20

    add-float v19, v19, v20

    .line 861
    .local v19, "tr2":F
    add-int/lit8 v20, v5, -0x1

    aget v20, p2, v20

    add-int/lit8 v21, v11, -0x1

    aget v21, p2, v21

    sub-float v20, v20, v21

    .line 862
    .local v20, "ti4":F
    add-int/lit8 v21, v5, -0x1

    aget v21, p2, v21

    add-int/lit8 v22, v11, -0x1

    aget v22, p2, v22

    add-float v21, v21, v22

    .line 863
    .local v21, "tr3":F
    add-int/lit8 v22, v12, -0x1

    add-float v23, v19, v21

    aput v23, p3, v22

    .line 864
    sub-float v22, v19, v21

    .line 865
    .local v22, "cr3":F
    add-float v23, v15, v16

    aput v23, p3, v12

    .line 866
    sub-float v23, v15, v16

    .line 867
    .local v23, "ci3":F
    sub-float v24, v18, v17

    .line 868
    .local v24, "cr2":F
    add-float v25, v18, v17

    .line 869
    .local v25, "cr4":F
    add-float v26, v14, v20

    .line 870
    .local v26, "ci2":F
    sub-float v27, v14, v20

    .line 872
    .local v27, "ci4":F
    add-int v28, v12, v2

    move/from16 v29, v28

    .local v29, "t8":I
    add-int/lit8 v28, v28, -0x1

    add-int v30, p5, v13

    add-int/lit8 v30, v30, -0x2

    aget v30, p4, v30

    mul-float v30, v30, v24

    add-int v31, p5, v13

    add-int/lit8 v31, v31, -0x1

    aget v31, p4, v31

    mul-float v31, v31, v26

    sub-float v30, v30, v31

    aput v30, p3, v28

    .line 873
    add-int v28, p5, v13

    add-int/lit8 v28, v28, -0x2

    aget v28, p4, v28

    mul-float v28, v28, v26

    add-int v30, p5, v13

    add-int/lit8 v30, v30, -0x1

    aget v30, p4, v30

    mul-float v30, v30, v24

    add-float v28, v28, v30

    aput v28, p3, v29

    .line 874
    add-int v28, v29, v2

    move/from16 v29, v28

    add-int/lit8 v28, v28, -0x1

    add-int v30, p7, v13

    add-int/lit8 v30, v30, -0x2

    aget v30, p6, v30

    mul-float v30, v30, v22

    add-int v31, p7, v13

    add-int/lit8 v31, v31, -0x1

    aget v31, p6, v31

    mul-float v31, v31, v23

    sub-float v30, v30, v31

    aput v30, p3, v28

    .line 875
    add-int v28, p7, v13

    add-int/lit8 v28, v28, -0x2

    aget v28, p6, v28

    mul-float v28, v28, v23

    add-int v30, p7, v13

    add-int/lit8 v30, v30, -0x1

    aget v30, p6, v30

    mul-float v30, v30, v22

    add-float v28, v28, v30

    aput v28, p3, v29

    .line 876
    add-int v28, v29, v2

    move/from16 v29, v28

    add-int/lit8 v28, v28, -0x1

    add-int v30, p9, v13

    add-int/lit8 v30, v30, -0x2

    aget v30, p8, v30

    mul-float v30, v30, v25

    add-int v31, p9, v13

    add-int/lit8 v31, v31, -0x1

    aget v31, p8, v31

    mul-float v31, v31, v27

    sub-float v30, v30, v31

    aput v30, p3, v28

    .line 877
    add-int v28, p9, v13

    add-int/lit8 v28, v28, -0x2

    aget v28, p8, v28

    mul-float v28, v28, v27

    add-int v30, p9, v13

    add-int/lit8 v30, v30, -0x1

    aget v30, p8, v30

    mul-float v30, v30, v25

    add-float v28, v28, v30

    aput v28, p3, v29

    .line 849
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_62

    .line 879
    .end local v14  # "ti1":F
    .end local v15  # "ti2":F
    .end local v16  # "ti3":F
    .end local v17  # "tr4":F
    .end local v18  # "tr1":F
    .end local v19  # "tr2":F
    .end local v20  # "ti4":F
    .end local v21  # "tr3":F
    .end local v22  # "cr3":F
    .end local v23  # "ci3":F
    .end local v24  # "cr2":F
    .end local v25  # "cr4":F
    .end local v26  # "ci2":F
    .end local v27  # "ci4":F
    .end local v29  # "t8":I
    :cond_151
    add-int/2addr v3, v0

    .line 846
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_57

    .line 881
    .end local v10  # "t5":I
    .end local v11  # "t4":I
    .end local v12  # "t7":I
    .end local v13  # "i":I
    :cond_156
    rem-int/lit8 v9, v0, 0x2

    if-ne v9, v8, :cond_15b

    .line 882
    return-void

    .line 885
    :cond_15b
    move/from16 v3, p0

    .line 886
    shl-int/lit8 v4, v0, 0x2

    .line 887
    add-int/lit8 v5, v0, -0x1

    .line 888
    shl-int/lit8 v8, v0, 0x1

    add-int/2addr v8, v0

    .line 889
    .local v8, "t4":I
    const/4 v7, 0x0

    :goto_165
    if-ge v7, v1, :cond_1ac

    .line 890
    move v9, v5

    .line 891
    .local v9, "t5":I
    aget v10, p2, v3

    aget v11, p2, v8

    add-float/2addr v10, v11

    .line 892
    .local v10, "ti1":F
    aget v11, p2, v8

    aget v12, p2, v3

    sub-float/2addr v11, v12

    .line 893
    .local v11, "ti2":F
    add-int/lit8 v12, v3, -0x1

    aget v12, p2, v12

    add-int/lit8 v13, v8, -0x1

    aget v13, p2, v13

    sub-float/2addr v12, v13

    .line 894
    .local v12, "tr1":F
    add-int/lit8 v13, v3, -0x1

    aget v13, p2, v13

    add-int/lit8 v14, v8, -0x1

    aget v14, p2, v14

    add-float/2addr v13, v14

    .line 895
    .local v13, "tr2":F
    add-float v14, v13, v13

    aput v14, p3, v9

    .line 896
    add-int v14, v9, v2

    move v9, v14

    sget v15, Lcom/jcraft/jorbis/Drft;->sqrt2:F

    sub-float v16, v12, v10

    mul-float v15, v15, v16

    aput v15, p3, v14

    .line 897
    add-int v14, v9, v2

    move v9, v14

    add-float v15, v11, v11

    aput v15, p3, v14

    .line 898
    add-int v14, v9, v2

    move v9, v14

    sget v15, Lcom/jcraft/jorbis/Drft;->sqrt2:F

    neg-float v15, v15

    add-float v16, v12, v10

    mul-float v15, v15, v16

    aput v15, p3, v14

    .line 900
    add-int/2addr v5, v0

    .line 901
    add-int/2addr v3, v4

    .line 902
    add-int/2addr v8, v4

    .line 889
    add-int/lit8 v7, v7, 0x1

    goto :goto_165

    .line 904
    .end local v9  # "t5":I
    .end local v10  # "ti1":F
    .end local v11  # "ti2":F
    .end local v12  # "tr1":F
    .end local v13  # "tr2":F
    :cond_1ac
    return-void
.end method

.method static dradbg(IIII[F[F[F[F[F[FI)V
    .registers 54
    .param p0, "ido"  # I
    .param p1, "ip"  # I
    .param p2, "l1"  # I
    .param p3, "idl1"  # I
    .param p4, "cc"  # [F
    .param p5, "c1"  # [F
    .param p6, "c2"  # [F
    .param p7, "ch"  # [F
    .param p8, "ch2"  # [F
    .param p9, "wa"  # [F
    .param p10, "index"  # I

    .line 909
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .local v4, "ipph":I
    const/4 v5, 0x0

    .local v5, "t0":I
    const/4 v6, 0x0

    .line 911
    .local v6, "t10":I
    const/4 v7, 0x0

    .line 912
    .local v7, "nbd":I
    const/4 v8, 0x0

    .local v8, "dcp":F
    const/4 v9, 0x0

    .line 913
    .local v9, "dsp":F
    const/4 v10, 0x0

    .line 915
    .local v10, "ipp2":I
    const/16 v11, 0x64

    .local v11, "state":I
    const/4 v12, 0x0

    move v14, v12

    move v15, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 918
    :goto_2a
    const/4 v13, 0x1

    sparse-switch v11, :sswitch_data_65a

    move/from16 v31, v8

    move/from16 v39, v9

    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v8  # "dcp":F
    .end local v9  # "dsp":F
    .end local v11  # "state":I
    .local v28, "state":I
    .local v31, "dcp":F
    .local v39, "dsp":F
    move v3, v14

    .local v3, "ai1":F
    move/from16 v8, v23

    .local v8, "t9":I
    move/from16 v9, v24

    .local v9, "l":I
    move/from16 v11, v26

    .local v11, "ik":I
    move v13, v15

    .local v13, "ar1":F
    move/from16 v11, v28

    move/from16 v8, v31

    move/from16 v9, v39

    .local v12, "arg":F
    goto/16 :goto_655

    .end local v3  # "ai1":F
    .end local v12  # "arg":F
    .end local v13  # "ar1":F
    .end local v28  # "state":I
    .end local v31  # "dcp":F
    .end local v39  # "dsp":F
    .local v8, "dcp":F
    .local v9, "dsp":F
    .local v11, "state":I
    .local v14, "ai1":F
    :sswitch_46
    move/from16 v16, v23

    .local v16, "t9":I
    move/from16 v18, v24

    .local v18, "l":I
    move/from16 v19, v26

    const/16 v27, 0x0

    .local v19, "ik":I
    move/from16 v20, v27

    .local v15, "ar1":F
    .local v17, "t1":I
    .local v20, "is":I
    move/from16 v21, v22

    .line 1220
    .restart local v12  # "arg":F
    .local v21, "j":I
    move/from16 v28, v11

    .end local v11  # "state":I
    .restart local v28  # "state":I
    neg-int v11, v0

    sub-int/2addr v11, v13

    .line 1221
    .end local v20  # "is":I
    .local v11, "is":I
    const/16 v17, 0x0

    .line 1222
    const/16 v20, 0x1

    move/from16 v13, v20

    .end local v21  # "j":I
    .local v13, "j":I
    :goto_5c
    if-ge v13, v1, :cond_c6

    .line 1223
    add-int/2addr v11, v0

    .line 1224
    add-int v17, v17, v5

    .line 1225
    move/from16 v20, v17

    .line 1226
    .local v20, "t2":I
    const/16 v21, 0x0

    move/from16 v42, v21

    move/from16 v21, v12

    move/from16 v12, v42

    .local v12, "k":I
    .local v21, "arg":F
    :goto_6b
    if-ge v12, v2, :cond_bf

    .line 1227
    move/from16 v22, v11

    .line 1228
    .local v22, "idij":I
    move/from16 v23, v20

    .line 1229
    .local v23, "t3":I
    const/16 v24, 0x2

    move/from16 v42, v24

    move/from16 v24, v11

    move/from16 v11, v42

    .local v11, "i":I
    .local v24, "is":I
    :goto_79
    if-ge v11, v0, :cond_b8

    .line 1230
    add-int/lit8 v22, v22, 0x2

    .line 1231
    add-int/lit8 v23, v23, 0x2

    .line 1232
    add-int/lit8 v25, v23, -0x1

    add-int v26, p10, v22

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    aget v26, p9, v26

    add-int/lit8 v27, v23, -0x1

    aget v27, p7, v27

    mul-float v26, v26, v27

    add-int v27, p10, v22

    aget v27, p9, v27

    aget v30, p7, v23

    mul-float v27, v27, v30

    sub-float v26, v26, v27

    aput v26, p5, v25

    .line 1233
    add-int v25, p10, v22

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    aget v25, p9, v25

    aget v26, p7, v23

    mul-float v25, v25, v26

    add-int v26, p10, v22

    aget v26, p9, v26

    add-int/lit8 v27, v23, -0x1

    aget v27, p7, v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, p5, v23

    .line 1229
    add-int/lit8 v11, v11, 0x2

    goto :goto_79

    .line 1235
    :cond_b8
    add-int v20, v20, v0

    .line 1226
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v24

    goto :goto_6b

    .line 1222
    .end local v22  # "idij":I
    .end local v23  # "t3":I
    .end local v24  # "is":I
    .local v11, "is":I
    :cond_bf
    move/from16 v24, v11

    .end local v11  # "is":I
    .restart local v24  # "is":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v21

    goto :goto_5c

    .line 1241
    .end local v20  # "t2":I
    .end local v21  # "arg":F
    .end local v24  # "is":I
    .restart local v11  # "is":I
    .local v12, "arg":F
    :cond_c6
    return-void

    .line 918
    .end local v12  # "arg":F
    .end local v13  # "j":I
    .end local v14  # "ai1":F
    .end local v15  # "ar1":F
    .end local v16  # "t9":I
    .end local v17  # "t1":I
    .end local v18  # "l":I
    .end local v19  # "ik":I
    .end local v28  # "state":I
    .local v11, "state":I
    :sswitch_c7
    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v11  # "state":I
    .restart local v28  # "state":I
    move v11, v14

    .local v11, "ai1":F
    move/from16 v13, v23

    .local v13, "t9":I
    move/from16 v14, v24

    .restart local v12  # "arg":F
    .local v14, "l":I
    .restart local v15  # "ar1":F
    .restart local v17  # "t1":I
    .local v18, "t2":I
    .local v22, "j":I
    goto/16 :goto_15a

    .end local v12  # "arg":F
    .end local v13  # "t9":I
    .end local v14  # "l":I
    .end local v15  # "ar1":F
    .end local v17  # "t1":I
    .end local v18  # "t2":I
    .end local v22  # "j":I
    .end local v28  # "state":I
    .local v11, "state":I
    :sswitch_d2
    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v11  # "state":I
    .restart local v28  # "state":I
    move v11, v14

    .local v11, "ai1":F
    move/from16 v13, v23

    .restart local v13  # "t9":I
    move/from16 v14, v24

    .restart local v14  # "l":I
    .restart local v18  # "t2":I
    move/from16 v23, v25

    .line 1156
    .restart local v12  # "arg":F
    .restart local v15  # "ar1":F
    .restart local v17  # "t1":I
    .restart local v22  # "j":I
    .restart local v23  # "t3":I
    const/16 v17, 0x0

    .line 1157
    mul-int v18, v10, v5

    .line 1158
    const/16 v22, 0x1

    move/from16 v26, v11

    move/from16 v11, v22

    .end local v22  # "j":I
    .end local v23  # "t3":I
    .local v11, "j":I
    .local v25, "t3":I
    .local v26, "ai1":F
    :goto_e7
    if-ge v11, v4, :cond_152

    .line 1159
    add-int v17, v17, v5

    .line 1160
    sub-int v18, v18, v5

    .line 1161
    move/from16 v19, v17

    .line 1162
    .end local v25  # "t3":I
    .local v19, "t3":I
    move/from16 v22, v18

    .line 1163
    .local v22, "t4":I
    const/16 v23, 0x2

    move/from16 v25, v19

    move/from16 v19, v22

    move/from16 v22, v12

    move/from16 v12, v23

    .local v12, "i":I
    .local v19, "t4":I
    .local v22, "arg":F
    .restart local v25  # "t3":I
    :goto_fb
    if-ge v12, v0, :cond_149

    .line 1164
    add-int/lit8 v25, v25, 0x2

    .line 1165
    add-int/lit8 v19, v19, 0x2

    .line 1166
    move/from16 v16, v25

    .line 1167
    .local v16, "t5":I
    move/from16 v20, v19

    .line 1168
    .local v20, "t6":I
    const/16 v23, 0x0

    move/from16 v30, v13

    move/from16 v13, v23

    .local v13, "k":I
    .local v30, "t9":I
    :goto_10b
    if-ge v13, v2, :cond_140

    .line 1169
    add-int/lit8 v23, v16, -0x1

    add-int/lit8 v24, v16, -0x1

    aget v24, p5, v24

    aget v31, p5, v20

    sub-float v24, v24, v31

    aput v24, p7, v23

    .line 1170
    add-int/lit8 v23, v20, -0x1

    add-int/lit8 v24, v16, -0x1

    aget v24, p5, v24

    aget v31, p5, v20

    add-float v24, v24, v31

    aput v24, p7, v23

    .line 1171
    aget v23, p5, v16

    add-int/lit8 v24, v20, -0x1

    aget v24, p5, v24

    add-float v23, v23, v24

    aput v23, p7, v16

    .line 1172
    aget v23, p5, v16

    add-int/lit8 v24, v20, -0x1

    aget v24, p5, v24

    sub-float v23, v23, v24

    aput v23, p7, v20

    .line 1173
    add-int v16, v16, v0

    .line 1174
    add-int v20, v20, v0

    .line 1168
    add-int/lit8 v13, v13, 0x1

    goto :goto_10b

    .line 1163
    :cond_140
    add-int/lit8 v12, v12, 0x2

    move/from16 v20, v16

    move/from16 v16, v13

    move/from16 v13, v30

    goto :goto_fb

    .line 1158
    .end local v16  # "t5":I
    .end local v20  # "t6":I
    .end local v30  # "t9":I
    .local v13, "t9":I
    :cond_149
    move/from16 v30, v13

    .end local v13  # "t9":I
    .restart local v30  # "t9":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v12

    move/from16 v12, v22

    goto :goto_e7

    .end local v19  # "t4":I
    .end local v22  # "arg":F
    .end local v30  # "t9":I
    .local v12, "arg":F
    .restart local v13  # "t9":I
    :cond_152
    move/from16 v22, v12

    move/from16 v30, v13

    .end local v12  # "arg":F
    .end local v13  # "t9":I
    .restart local v22  # "arg":F
    .restart local v30  # "t9":I
    move/from16 v22, v11

    move/from16 v11, v26

    .line 1179
    .end local v25  # "t3":I
    .end local v26  # "ai1":F
    .end local v30  # "t9":I
    .local v11, "ai1":F
    .restart local v12  # "arg":F
    .restart local v13  # "t9":I
    .local v22, "j":I
    :goto_15a
    move/from16 v23, v11

    const/4 v11, 0x1

    .end local v11  # "ai1":F
    .local v23, "ai1":F
    if-ne v0, v11, :cond_160

    .line 1180
    return-void

    .line 1182
    :cond_160
    const/4 v11, 0x0

    .local v11, "ik":I
    :goto_161
    if-ge v11, v3, :cond_16a

    .line 1183
    aget v24, p8, v11

    aput v24, p6, v11

    .line 1182
    add-int/lit8 v11, v11, 0x1

    goto :goto_161

    .line 1185
    :cond_16a
    const/16 v17, 0x0

    .line 1186
    const/16 v22, 0x1

    move/from16 v42, v22

    move/from16 v22, v11

    move/from16 v11, v42

    .local v11, "j":I
    .local v22, "ik":I
    :goto_174
    if-ge v11, v1, :cond_194

    .line 1187
    add-int v16, v17, v5

    move/from16 v17, v16

    .line 1188
    .end local v18  # "t2":I
    .local v16, "t2":I
    const/16 v18, 0x0

    move/from16 v24, v12

    move/from16 v12, v18

    move/from16 v18, v16

    .end local v16  # "t2":I
    .local v12, "k":I
    .restart local v18  # "t2":I
    .local v24, "arg":F
    :goto_182
    if-ge v12, v2, :cond_18d

    .line 1189
    aget v16, p7, v18

    aput v16, p5, v18

    .line 1190
    add-int v18, v18, v0

    .line 1188
    add-int/lit8 v12, v12, 0x1

    goto :goto_182

    .line 1186
    :cond_18d
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v12

    move/from16 v12, v24

    goto :goto_174

    .end local v24  # "arg":F
    .local v12, "arg":F
    :cond_194
    move/from16 v24, v12

    .line 1194
    .end local v12  # "arg":F
    .end local v18  # "t2":I
    .restart local v24  # "arg":F
    if-le v7, v2, :cond_1a9

    .line 1195
    const/16 v12, 0x8b

    .line 1196
    .end local v28  # "state":I
    .local v12, "state":I
    move/from16 v26, v22

    move/from16 v22, v11

    move v11, v12

    move/from16 v12, v24

    move/from16 v24, v14

    move/from16 v14, v23

    move/from16 v23, v13

    goto/16 :goto_655

    .line 1199
    .end local v12  # "state":I
    .restart local v28  # "state":I
    :cond_1a9
    neg-int v12, v0

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    .line 1200
    .local v12, "is":I
    const/16 v16, 0x0

    .line 1201
    .end local v17  # "t1":I
    .local v16, "t1":I
    const/4 v11, 0x1

    :goto_1b1
    if-ge v11, v1, :cond_219

    .line 1202
    add-int/2addr v12, v0

    .line 1203
    add-int v16, v16, v5

    .line 1204
    move/from16 v17, v12

    .line 1205
    .local v17, "idij":I
    move/from16 v18, v16

    .line 1206
    .restart local v18  # "t2":I
    const/16 v19, 0x2

    move/from16 v42, v19

    move/from16 v19, v12

    move/from16 v12, v42

    .local v12, "i":I
    .local v19, "is":I
    :goto_1c2
    if-ge v12, v0, :cond_212

    .line 1207
    add-int/lit8 v18, v18, 0x2

    .line 1208
    add-int/lit8 v17, v17, 0x2

    .line 1209
    move/from16 v20, v18

    .line 1210
    .local v20, "t3":I
    const/16 v21, 0x0

    move/from16 v25, v13

    move/from16 v13, v21

    .local v13, "k":I
    .local v25, "t9":I
    :goto_1d0
    if-ge v13, v2, :cond_20d

    .line 1211
    add-int/lit8 v21, v20, -0x1

    add-int v26, p10, v17

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    aget v26, p9, v26

    add-int/lit8 v27, v20, -0x1

    aget v27, p7, v27

    mul-float v26, v26, v27

    add-int v27, p10, v17

    aget v27, p9, v27

    aget v30, p7, v20

    mul-float v27, v27, v30

    sub-float v26, v26, v27

    aput v26, p5, v21

    .line 1212
    add-int v21, p10, v17

    const/16 v26, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v21, p9, v21

    aget v26, p7, v20

    mul-float v21, v21, v26

    add-int v26, p10, v17

    aget v26, p9, v26

    add-int/lit8 v27, v20, -0x1

    aget v27, p7, v27

    mul-float v26, v26, v27

    add-float v21, v21, v26

    aput v21, p5, v20

    .line 1213
    add-int v20, v20, v0

    .line 1210
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d0

    .line 1206
    :cond_20d
    add-int/lit8 v12, v12, 0x2

    move/from16 v13, v25

    goto :goto_1c2

    .line 1201
    .end local v20  # "t3":I
    .end local v25  # "t9":I
    .local v13, "t9":I
    :cond_212
    move/from16 v25, v13

    .end local v13  # "t9":I
    .restart local v25  # "t9":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v19

    goto :goto_1b1

    .line 1217
    .end local v17  # "idij":I
    .end local v18  # "t2":I
    .end local v19  # "is":I
    .end local v25  # "t9":I
    .local v12, "is":I
    .restart local v13  # "t9":I
    :cond_219
    return-void

    .line 918
    .end local v12  # "is":I
    .end local v13  # "t9":I
    .end local v14  # "l":I
    .end local v15  # "ar1":F
    .end local v16  # "t1":I
    .end local v22  # "ik":I
    .end local v23  # "ai1":F
    .end local v24  # "arg":F
    .end local v28  # "state":I
    .local v11, "state":I
    :sswitch_21a
    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v11  # "state":I
    .restart local v28  # "state":I
    move/from16 v11, v22

    .local v11, "j":I
    move/from16 v13, v21

    .local v12, "arg":F
    .local v13, "t7":I
    move/from16 v14, v17

    .local v14, "t1":I
    move/from16 v15, v18

    .local v15, "t2":I
    goto/16 :goto_2c2

    .end local v12  # "arg":F
    .end local v13  # "t7":I
    .end local v14  # "t1":I
    .end local v15  # "t2":I
    .end local v28  # "state":I
    .local v11, "state":I
    :sswitch_228
    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v11  # "state":I
    .restart local v28  # "state":I
    move/from16 v11, v20

    .local v11, "t5":I
    move/from16 v13, v21

    .restart local v13  # "t7":I
    move/from16 v14, v18

    .local v14, "t2":I
    move/from16 v15, v17

    .local v15, "t1":I
    move/from16 v17, v22

    .line 1021
    .restart local v12  # "arg":F
    .local v17, "j":I
    const/4 v15, 0x0

    .line 1022
    mul-int v14, v10, v5

    .line 1023
    const/4 v13, 0x0

    .line 1024
    const/16 v17, 0x1

    move/from16 v11, v17

    move/from16 v42, v15

    move v15, v14

    move/from16 v14, v42

    .end local v17  # "j":I
    .local v11, "j":I
    .local v14, "t1":I
    .local v15, "t2":I
    .local v20, "t5":I
    :goto_243
    if-ge v11, v4, :cond_2c0

    .line 1025
    add-int/2addr v14, v5

    .line 1026
    sub-int/2addr v15, v5

    .line 1027
    move/from16 v17, v14

    .line 1028
    .local v17, "t3":I
    move/from16 v18, v15

    .line 1029
    .local v18, "t4":I
    shl-int/lit8 v19, v0, 0x1

    add-int v13, v13, v19

    .line 1030
    move/from16 v19, v13

    .line 1031
    .local v19, "t8":I
    move/from16 v21, v13

    .line 1032
    .local v21, "t9":I
    const/16 v22, 0x2

    move/from16 v42, v21

    move/from16 v21, v12

    move/from16 v12, v22

    move/from16 v22, v42

    .local v12, "i":I
    .local v21, "arg":F
    .local v22, "t9":I
    :goto_25d
    if-ge v12, v0, :cond_2b7

    .line 1033
    add-int/lit8 v17, v17, 0x2

    .line 1034
    add-int/lit8 v18, v18, 0x2

    .line 1035
    add-int/lit8 v19, v19, 0x2

    .line 1036
    add-int/lit8 v22, v22, -0x2

    .line 1037
    move/from16 v16, v17

    .line 1038
    .end local v20  # "t5":I
    .local v16, "t5":I
    move/from16 v20, v18

    .line 1039
    .local v20, "t6":I
    move/from16 v23, v19

    .line 1040
    .local v23, "t11":I
    move/from16 v24, v22

    .line 1041
    .local v24, "t12":I
    const/16 v25, 0x0

    move/from16 v30, v13

    move/from16 v13, v25

    .local v13, "k":I
    .local v30, "t7":I
    :goto_275
    if-ge v13, v2, :cond_2ae

    .line 1042
    add-int/lit8 v25, v16, -0x1

    add-int/lit8 v31, v23, -0x1

    aget v31, p4, v31

    add-int/lit8 v32, v24, -0x1

    aget v32, p4, v32

    add-float v31, v31, v32

    aput v31, p7, v25

    .line 1043
    add-int/lit8 v25, v20, -0x1

    add-int/lit8 v31, v23, -0x1

    aget v31, p4, v31

    add-int/lit8 v32, v24, -0x1

    aget v32, p4, v32

    sub-float v31, v31, v32

    aput v31, p7, v25

    .line 1044
    aget v25, p4, v23

    aget v31, p4, v24

    sub-float v25, v25, v31

    aput v25, p7, v16

    .line 1045
    aget v25, p4, v23

    aget v31, p4, v24

    add-float v25, v25, v31

    aput v25, p7, v20

    .line 1046
    add-int v16, v16, v0

    .line 1047
    add-int v20, v20, v0

    .line 1048
    add-int v23, v23, v6

    .line 1049
    add-int v24, v24, v6

    .line 1041
    add-int/lit8 v13, v13, 0x1

    goto :goto_275

    .line 1032
    :cond_2ae
    add-int/lit8 v12, v12, 0x2

    move/from16 v20, v16

    move/from16 v16, v13

    move/from16 v13, v30

    goto :goto_25d

    .end local v16  # "t5":I
    .end local v23  # "t11":I
    .end local v24  # "t12":I
    .end local v30  # "t7":I
    .local v13, "t7":I
    .local v20, "t5":I
    :cond_2b7
    move/from16 v30, v13

    .line 1024
    .end local v13  # "t7":I
    .end local v20  # "t5":I
    .restart local v30  # "t7":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v12

    move/from16 v12, v21

    .end local v12  # "i":I
    .end local v17  # "t3":I
    .end local v18  # "t4":I
    .end local v19  # "t8":I
    .end local v22  # "t9":I
    .restart local v20  # "t5":I
    goto :goto_243

    .end local v21  # "arg":F
    .end local v30  # "t7":I
    .local v12, "arg":F
    .restart local v13  # "t7":I
    :cond_2c0
    move/from16 v21, v12

    .line 1054
    .end local v20  # "t5":I
    :goto_2c2
    const/high16 v17, 0x3f800000  # 1.0f

    .line 1055
    .local v17, "ar1":F
    const/16 v18, 0x0

    .line 1056
    .local v18, "ai1":F
    const/4 v14, 0x0

    .line 1057
    mul-int v21, v10, v3

    move/from16 v15, v21

    .line 1058
    .local v21, "t9":I
    add-int/lit8 v22, v1, -0x1

    mul-int v22, v22, v3

    .line 1059
    .local v22, "t3":I
    const/16 v23, 0x1

    move/from16 v42, v23

    move/from16 v23, v11

    move/from16 v11, v42

    .local v11, "l":I
    .local v23, "j":I
    :goto_2d7
    if-ge v11, v4, :cond_397

    .line 1060
    add-int/2addr v14, v3

    .line 1061
    sub-int/2addr v15, v3

    .line 1063
    mul-float v20, v8, v17

    mul-float v24, v9, v18

    sub-float v20, v20, v24

    .line 1064
    .local v20, "ar1h":F
    mul-float v24, v8, v18

    mul-float v25, v9, v17

    add-float v18, v24, v25

    .line 1065
    move/from16 v17, v20

    .line 1066
    move/from16 v24, v14

    .line 1067
    .local v24, "t4":I
    move/from16 v25, v15

    .line 1068
    .local v25, "t5":I
    const/16 v26, 0x0

    .line 1069
    .local v26, "t6":I
    move/from16 v13, p3

    .line 1070
    move/from16 v30, v22

    .line 1071
    .local v30, "t8":I
    const/16 v31, 0x0

    move/from16 v42, v31

    move/from16 v31, v8

    move/from16 v8, v42

    .local v8, "ik":I
    .restart local v31  # "dcp":F
    :goto_2fb
    if-ge v8, v3, :cond_324

    .line 1072
    add-int/lit8 v32, v24, 0x1

    .end local v24  # "t4":I
    .local v32, "t4":I
    add-int/lit8 v33, v26, 0x1

    .end local v26  # "t6":I
    .local v33, "t6":I
    aget v26, p8, v26

    add-int/lit8 v34, v13, 0x1

    .end local v13  # "t7":I
    .local v34, "t7":I
    aget v13, p8, v13

    mul-float v13, v13, v17

    add-float v26, v26, v13

    aput v26, p6, v24

    .line 1073
    add-int/lit8 v13, v25, 0x1

    .end local v25  # "t5":I
    .local v13, "t5":I
    add-int/lit8 v24, v30, 0x1

    .end local v30  # "t8":I
    .local v24, "t8":I
    aget v26, p8, v30

    mul-float v26, v26, v18

    aput v26, p6, v25

    .line 1071
    add-int/lit8 v8, v8, 0x1

    move/from16 v25, v13

    move/from16 v30, v24

    move/from16 v24, v32

    move/from16 v26, v33

    move/from16 v13, v34

    goto :goto_2fb

    .line 1075
    .end local v32  # "t4":I
    .end local v33  # "t6":I
    .end local v34  # "t7":I
    .local v13, "t7":I
    .local v24, "t4":I
    .restart local v25  # "t5":I
    .restart local v26  # "t6":I
    .restart local v30  # "t8":I
    :cond_324
    move/from16 v32, v17

    .line 1076
    .local v32, "dc2":F
    move/from16 v33, v18

    .line 1077
    .local v33, "ds2":F
    move/from16 v34, v17

    .line 1078
    .local v34, "ar2":F
    move/from16 v35, v18

    .line 1080
    .local v35, "ai2":F
    move/from16 v26, p3

    .line 1081
    sub-int v13, v21, v3

    .line 1082
    const/16 v23, 0x2

    move/from16 v42, v23

    move/from16 v23, v8

    move/from16 v8, v42

    .local v8, "j":I
    .local v23, "ik":I
    :goto_338
    if-ge v8, v4, :cond_389

    .line 1083
    add-int v26, v26, v3

    .line 1084
    sub-int/2addr v13, v3

    .line 1085
    mul-float v36, v32, v34

    mul-float v37, v33, v35

    sub-float v36, v36, v37

    .line 1086
    .local v36, "ar2h":F
    mul-float v37, v32, v35

    mul-float v38, v33, v34

    add-float v35, v37, v38

    .line 1087
    move/from16 v34, v36

    .line 1088
    move/from16 v24, v14

    .line 1089
    move/from16 v25, v15

    .line 1090
    move/from16 v37, v26

    .line 1091
    .local v37, "t11":I
    move/from16 v38, v13

    .line 1092
    .local v38, "t12":I
    const/16 v23, 0x0

    move/from16 v39, v9

    move/from16 v9, v23

    .end local v23  # "ik":I
    .local v9, "ik":I
    .restart local v39  # "dsp":F
    :goto_359
    if-ge v9, v3, :cond_382

    .line 1093
    add-int/lit8 v23, v24, 0x1

    .end local v24  # "t4":I
    .local v23, "t4":I
    aget v40, p6, v24

    add-int/lit8 v41, v37, 0x1

    .end local v37  # "t11":I
    .local v41, "t11":I
    aget v37, p8, v37

    mul-float v37, v37, v34

    add-float v40, v40, v37

    aput v40, p6, v24

    .line 1094
    add-int/lit8 v24, v25, 0x1

    .end local v25  # "t5":I
    .local v24, "t5":I
    aget v37, p6, v25

    add-int/lit8 v40, v38, 0x1

    .end local v38  # "t12":I
    .local v40, "t12":I
    aget v38, p8, v38

    mul-float v38, v38, v35

    add-float v37, v37, v38

    aput v37, p6, v25

    .line 1092
    add-int/lit8 v9, v9, 0x1

    move/from16 v25, v24

    move/from16 v38, v40

    move/from16 v37, v41

    move/from16 v24, v23

    goto :goto_359

    .line 1082
    .end local v23  # "t4":I
    .end local v40  # "t12":I
    .end local v41  # "t11":I
    .local v24, "t4":I
    .restart local v25  # "t5":I
    .restart local v37  # "t11":I
    .restart local v38  # "t12":I
    :cond_382
    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v9

    move/from16 v9, v39

    goto :goto_338

    .line 1059
    .end local v36  # "ar2h":F
    .end local v37  # "t11":I
    .end local v38  # "t12":I
    .end local v39  # "dsp":F
    .local v9, "dsp":F
    .local v23, "ik":I
    :cond_389
    move/from16 v39, v9

    .end local v9  # "dsp":F
    .restart local v39  # "dsp":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v26, v23

    move/from16 v20, v25

    move/from16 v23, v8

    move/from16 v8, v31

    goto/16 :goto_2d7

    .end local v20  # "ar1h":F
    .end local v24  # "t4":I
    .end local v25  # "t5":I
    .end local v26  # "t6":I
    .end local v30  # "t8":I
    .end local v31  # "dcp":F
    .end local v32  # "dc2":F
    .end local v33  # "ds2":F
    .end local v34  # "ar2":F
    .end local v35  # "ai2":F
    .end local v39  # "dsp":F
    .local v8, "dcp":F
    .restart local v9  # "dsp":F
    .local v23, "j":I
    :cond_397
    move/from16 v31, v8

    move/from16 v39, v9

    .line 1099
    .end local v8  # "dcp":F
    .end local v9  # "dsp":F
    .end local v13  # "t7":I
    .end local v23  # "j":I
    .restart local v31  # "dcp":F
    .restart local v39  # "dsp":F
    const/4 v8, 0x0

    .line 1100
    .end local v14  # "t1":I
    .local v8, "t1":I
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_39d
    if-ge v9, v4, :cond_3bd

    .line 1101
    add-int/2addr v8, v3

    .line 1102
    move v14, v8

    .line 1103
    .end local v15  # "t2":I
    .local v14, "t2":I
    const/4 v15, 0x0

    move/from16 v42, v15

    move v15, v14

    move/from16 v14, v42

    .local v14, "ik":I
    .restart local v15  # "t2":I
    :goto_3a7
    if-ge v14, v3, :cond_3b8

    .line 1104
    aget v23, p8, v14

    add-int/lit8 v24, v15, 0x1

    .end local v15  # "t2":I
    .local v24, "t2":I
    aget v15, p8, v15

    add-float v23, v23, v15

    aput v23, p8, v14

    .line 1103
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v24

    goto :goto_3a7

    .line 1100
    .end local v24  # "t2":I
    .restart local v15  # "t2":I
    :cond_3b8
    add-int/lit8 v9, v9, 0x1

    move/from16 v26, v14

    goto :goto_39d

    .line 1107
    .end local v14  # "ik":I
    :cond_3bd
    const/4 v8, 0x0

    .line 1108
    mul-int v14, v10, v5

    .line 1109
    .end local v15  # "t2":I
    .local v14, "t2":I
    const/4 v9, 0x1

    move/from16 v25, v22

    .end local v22  # "t3":I
    .local v25, "t3":I
    :goto_3c3
    if-ge v9, v4, :cond_3ee

    .line 1110
    add-int/2addr v8, v5

    .line 1111
    sub-int/2addr v14, v5

    .line 1112
    move v15, v8

    .line 1113
    .end local v25  # "t3":I
    .local v15, "t3":I
    move/from16 v16, v14

    .line 1114
    .local v16, "t4":I
    const/16 v22, 0x0

    move/from16 v25, v15

    move/from16 v15, v22

    .local v15, "k":I
    .restart local v25  # "t3":I
    :goto_3d0
    if-ge v15, v2, :cond_3e9

    .line 1115
    aget v22, p5, v25

    aget v23, p5, v16

    sub-float v22, v22, v23

    aput v22, p7, v25

    .line 1116
    aget v22, p5, v25

    aget v23, p5, v16

    add-float v22, v22, v23

    aput v22, p7, v16

    .line 1117
    add-int v25, v25, v0

    .line 1118
    add-int v16, v16, v0

    .line 1114
    add-int/lit8 v15, v15, 0x1

    goto :goto_3d0

    .line 1109
    :cond_3e9
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    goto :goto_3c3

    .line 1122
    .end local v15  # "k":I
    .end local v16  # "t4":I
    :cond_3ee
    const/4 v15, 0x1

    if-ne v0, v15, :cond_40e

    .line 1123
    const/16 v15, 0x84

    .line 1124
    .end local v28  # "state":I
    .local v15, "state":I
    move/from16 v22, v26

    move/from16 v24, v11

    move v11, v15

    move/from16 v15, v17

    move/from16 v23, v21

    move/from16 v17, v8

    move/from16 v22, v9

    move/from16 v21, v13

    move/from16 v8, v31

    move/from16 v9, v39

    move/from16 v42, v18

    move/from16 v18, v14

    move/from16 v14, v42

    .end local v8  # "t1":I
    .end local v9  # "j":I
    .end local v14  # "t2":I
    .end local v25  # "t3":I
    .local v22, "ik":I
    goto/16 :goto_655

    .line 1126
    .end local v15  # "state":I
    .end local v22  # "ik":I
    .restart local v8  # "t1":I
    .restart local v9  # "j":I
    .restart local v14  # "t2":I
    .restart local v25  # "t3":I
    .restart local v28  # "state":I
    :cond_40e
    if-ge v7, v2, :cond_42d

    .line 1127
    const/16 v15, 0x80

    .line 1128
    .end local v28  # "state":I
    .restart local v15  # "state":I
    move/from16 v22, v26

    move/from16 v24, v11

    move v11, v15

    move/from16 v15, v17

    move/from16 v23, v21

    move/from16 v17, v8

    move/from16 v22, v9

    move/from16 v21, v13

    move/from16 v8, v31

    move/from16 v9, v39

    move/from16 v42, v18

    move/from16 v18, v14

    move/from16 v14, v42

    .end local v8  # "t1":I
    .end local v9  # "j":I
    .end local v14  # "t2":I
    .end local v25  # "t3":I
    .restart local v22  # "ik":I
    goto/16 :goto_655

    .line 1131
    .end local v15  # "state":I
    .end local v22  # "ik":I
    .restart local v8  # "t1":I
    .restart local v9  # "j":I
    .restart local v14  # "t2":I
    .restart local v25  # "t3":I
    .restart local v28  # "state":I
    :cond_42d
    const/4 v8, 0x0

    .line 1132
    mul-int v14, v10, v5

    .line 1133
    const/4 v9, 0x1

    :goto_431
    if-ge v9, v4, :cond_491

    .line 1134
    add-int/2addr v8, v5

    .line 1135
    sub-int/2addr v14, v5

    .line 1136
    move v15, v8

    .line 1137
    .end local v25  # "t3":I
    .local v15, "t3":I
    move/from16 v16, v14

    .line 1138
    .restart local v16  # "t4":I
    const/16 v22, 0x0

    move/from16 v25, v15

    move/from16 v15, v22

    .local v15, "k":I
    .restart local v25  # "t3":I
    :goto_43e
    if-ge v15, v2, :cond_48a

    .line 1139
    move/from16 v19, v25

    .line 1140
    .local v19, "t5":I
    move/from16 v20, v16

    .line 1141
    .local v20, "t6":I
    const/16 v22, 0x2

    move/from16 v3, v22

    .local v3, "i":I
    :goto_448
    if-ge v3, v0, :cond_47d

    .line 1142
    add-int/lit8 v19, v19, 0x2

    .line 1143
    add-int/lit8 v20, v20, 0x2

    .line 1144
    add-int/lit8 v22, v19, -0x1

    add-int/lit8 v23, v19, -0x1

    aget v23, p5, v23

    aget v24, p5, v20

    sub-float v23, v23, v24

    aput v23, p7, v22

    .line 1145
    add-int/lit8 v22, v20, -0x1

    add-int/lit8 v23, v19, -0x1

    aget v23, p5, v23

    aget v24, p5, v20

    add-float v23, v23, v24

    aput v23, p7, v22

    .line 1146
    aget v22, p5, v19

    add-int/lit8 v23, v20, -0x1

    aget v23, p5, v23

    add-float v22, v22, v23

    aput v22, p7, v19

    .line 1147
    aget v22, p5, v19

    add-int/lit8 v23, v20, -0x1

    aget v23, p5, v23

    sub-float v22, v22, v23

    aput v22, p7, v20

    .line 1141
    add-int/lit8 v3, v3, 0x2

    goto :goto_448

    .line 1149
    :cond_47d
    add-int v25, v25, v0

    .line 1150
    add-int v16, v16, v0

    .line 1138
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    move/from16 v19, v3

    move/from16 v3, p3

    goto :goto_43e

    .line 1133
    .end local v3  # "i":I
    .end local v19  # "t5":I
    .end local v20  # "t6":I
    :cond_48a
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p3

    move/from16 v16, v15

    goto :goto_431

    .line 1153
    .end local v15  # "k":I
    .end local v16  # "t4":I
    :cond_491
    const/16 v3, 0x84

    .line 1154
    .end local v28  # "state":I
    .local v3, "state":I
    move/from16 v15, v26

    move/from16 v22, v9

    move/from16 v24, v11

    move/from16 v15, v17

    move/from16 v23, v21

    move/from16 v9, v39

    move v11, v3

    move/from16 v17, v8

    move/from16 v21, v13

    move/from16 v8, v31

    move/from16 v42, v18

    move/from16 v18, v14

    move/from16 v14, v42

    .end local v8  # "t1":I
    .end local v9  # "j":I
    .end local v14  # "t2":I
    .end local v25  # "t3":I
    .local v15, "ik":I
    goto/16 :goto_655

    .line 918
    .end local v3  # "state":I
    .end local v12  # "arg":F
    .end local v15  # "ik":I
    .end local v17  # "ar1":F
    .end local v18  # "ai1":F
    .end local v21  # "t9":I
    .end local v31  # "dcp":F
    .end local v39  # "dsp":F
    .local v8, "dcp":F
    .local v9, "dsp":F
    .local v11, "state":I
    :sswitch_4ae
    move/from16 v31, v8

    move/from16 v39, v9

    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v8  # "dcp":F
    .end local v9  # "dsp":F
    .end local v11  # "state":I
    .restart local v28  # "state":I
    .restart local v31  # "dcp":F
    .restart local v39  # "dsp":F
    move/from16 v3, v19

    .local v3, "i":I
    move v8, v12

    .local v8, "arg":F
    move/from16 v9, v17

    .local v9, "t1":I
    goto :goto_4ea

    .end local v3  # "i":I
    .end local v28  # "state":I
    .end local v31  # "dcp":F
    .end local v39  # "dsp":F
    .local v8, "dcp":F
    .local v9, "dsp":F
    .restart local v11  # "state":I
    :sswitch_4bc
    move/from16 v31, v8

    move/from16 v39, v9

    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v8  # "dcp":F
    .end local v9  # "dsp":F
    .end local v11  # "state":I
    .restart local v28  # "state":I
    .restart local v31  # "dcp":F
    .restart local v39  # "dsp":F
    move/from16 v3, v16

    .local v3, "k":I
    move v8, v12

    .local v8, "arg":F
    move/from16 v9, v17

    .local v9, "t1":I
    move/from16 v11, v18

    .line 948
    .local v11, "t2":I
    const/4 v9, 0x0

    .line 949
    const/4 v12, 0x0

    .end local v3  # "k":I
    .local v12, "i":I
    .local v16, "k":I
    :goto_4cd
    if-ge v12, v0, :cond_4e8

    .line 950
    move v3, v9

    .line 951
    .end local v11  # "t2":I
    .local v3, "t2":I
    move v11, v9

    .line 952
    .local v11, "t3":I
    const/4 v13, 0x0

    move/from16 v25, v11

    move v11, v3

    .end local v3  # "t2":I
    .end local v16  # "k":I
    .local v11, "t2":I
    .local v13, "k":I
    .restart local v25  # "t3":I
    :goto_4d5
    if-ge v13, v2, :cond_4e1

    .line 953
    aget v3, p4, v25

    aput v3, p7, v11

    .line 954
    add-int/2addr v11, v0

    .line 955
    add-int v25, v25, v6

    .line 952
    add-int/lit8 v13, v13, 0x1

    goto :goto_4d5

    .line 957
    :cond_4e1
    add-int/lit8 v9, v9, 0x1

    .line 949
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v13

    goto :goto_4cd

    .end local v13  # "k":I
    .end local v25  # "t3":I
    .restart local v16  # "k":I
    :cond_4e8
    move/from16 v19, v12

    .line 960
    .end local v11  # "t2":I
    .end local v12  # "i":I
    .end local v16  # "k":I
    .local v19, "i":I
    :goto_4ea
    const/4 v3, 0x0

    .line 961
    .end local v9  # "t1":I
    .local v3, "t1":I
    mul-int v9, v10, v5

    .line 962
    .local v9, "t2":I
    shl-int/lit8 v11, v0, 0x1

    move v12, v11

    .local v12, "t5":I
    move/from16 v21, v11

    .line 963
    .local v21, "t7":I
    const/4 v11, 0x1

    move/from16 v17, v3

    move/from16 v18, v9

    move/from16 v20, v12

    .end local v3  # "t1":I
    .end local v9  # "t2":I
    .end local v12  # "t5":I
    .local v11, "j":I
    .local v17, "t1":I
    .local v18, "t2":I
    .local v20, "t5":I
    :goto_4f9
    if-ge v11, v4, :cond_52c

    .line 964
    add-int v17, v17, v5

    .line 965
    sub-int v18, v18, v5

    .line 966
    move/from16 v3, v17

    .line 967
    .local v3, "t3":I
    move/from16 v9, v18

    .line 968
    .local v9, "t4":I
    move/from16 v12, v20

    .line 969
    .local v12, "t6":I
    const/4 v13, 0x0

    move/from16 v25, v3

    .end local v3  # "t3":I
    .restart local v13  # "k":I
    .restart local v25  # "t3":I
    :goto_508
    if-ge v13, v2, :cond_525

    .line 970
    add-int/lit8 v3, v12, -0x1

    aget v3, p4, v3

    add-int/lit8 v16, v12, -0x1

    aget v16, p4, v16

    add-float v3, v3, v16

    aput v3, p7, v25

    .line 971
    aget v3, p4, v12

    aget v16, p4, v12

    add-float v3, v3, v16

    aput v3, p7, v9

    .line 972
    add-int v25, v25, v0

    .line 973
    add-int/2addr v9, v0

    .line 974
    add-int/2addr v12, v6

    .line 969
    add-int/lit8 v13, v13, 0x1

    goto :goto_508

    .line 976
    :cond_525
    add-int v20, v20, v21

    .line 963
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v13

    goto :goto_4f9

    .line 978
    .end local v9  # "t4":I
    .end local v12  # "t6":I
    .end local v13  # "k":I
    .end local v25  # "t3":I
    :cond_52c
    const/4 v3, 0x1

    if-ne v0, v3, :cond_543

    .line 979
    const/16 v3, 0x74

    .line 980
    .end local v28  # "state":I
    .local v3, "state":I
    move v9, v14

    .end local v11  # "j":I
    .end local v17  # "t1":I
    .end local v18  # "t2":I
    .end local v19  # "i":I
    .end local v20  # "t5":I
    .end local v21  # "t7":I
    .local v9, "ai1":F
    move/from16 v12, v23

    .local v12, "t9":I
    move/from16 v13, v24

    .local v13, "l":I
    move/from16 v14, v26

    .local v14, "ik":I
    move/from16 v22, v11

    move v11, v3

    move v12, v8

    move v14, v9

    move/from16 v8, v31

    move/from16 v9, v39

    .local v15, "ar1":F
    goto/16 :goto_655

    .line 982
    .end local v3  # "state":I
    .end local v9  # "ai1":F
    .end local v12  # "t9":I
    .end local v13  # "l":I
    .end local v14  # "ik":I
    .end local v15  # "ar1":F
    .restart local v11  # "j":I
    .restart local v17  # "t1":I
    .restart local v18  # "t2":I
    .restart local v19  # "i":I
    .restart local v20  # "t5":I
    .restart local v21  # "t7":I
    .restart local v28  # "state":I
    :cond_543
    if-ge v7, v2, :cond_559

    .line 983
    const/16 v3, 0x70

    .line 984
    .end local v28  # "state":I
    .restart local v3  # "state":I
    move v9, v14

    .end local v11  # "j":I
    .end local v17  # "t1":I
    .end local v18  # "t2":I
    .end local v19  # "i":I
    .end local v20  # "t5":I
    .end local v21  # "t7":I
    .restart local v9  # "ai1":F
    move/from16 v12, v23

    .restart local v12  # "t9":I
    move/from16 v13, v24

    .restart local v13  # "l":I
    move/from16 v14, v26

    .restart local v14  # "ik":I
    move/from16 v22, v11

    move v11, v3

    move v12, v8

    move v14, v9

    move/from16 v8, v31

    move/from16 v9, v39

    .restart local v15  # "ar1":F
    goto/16 :goto_655

    .line 987
    .end local v3  # "state":I
    .end local v9  # "ai1":F
    .end local v12  # "t9":I
    .end local v13  # "l":I
    .end local v14  # "ik":I
    .end local v15  # "ar1":F
    .restart local v11  # "j":I
    .restart local v17  # "t1":I
    .restart local v18  # "t2":I
    .restart local v19  # "i":I
    .restart local v20  # "t5":I
    .restart local v21  # "t7":I
    .restart local v28  # "state":I
    :cond_559
    const/4 v3, 0x0

    .line 988
    .end local v17  # "t1":I
    .local v3, "t1":I
    mul-int v9, v10, v5

    .line 989
    .end local v18  # "t2":I
    .local v9, "t2":I
    const/4 v12, 0x0

    .line 990
    .end local v21  # "t7":I
    .local v12, "t7":I
    const/4 v11, 0x1

    move/from16 v17, v3

    move/from16 v18, v9

    move/from16 v21, v12

    .end local v3  # "t1":I
    .end local v9  # "t2":I
    .end local v12  # "t7":I
    .restart local v17  # "t1":I
    .restart local v18  # "t2":I
    .restart local v21  # "t7":I
    :goto_564
    if-ge v11, v4, :cond_5d0

    .line 991
    add-int v17, v17, v5

    .line 992
    sub-int v18, v18, v5

    .line 993
    move/from16 v3, v17

    .line 994
    .local v3, "t3":I
    move/from16 v9, v18

    .line 996
    .local v9, "t4":I
    shl-int/lit8 v12, v0, 0x1

    add-int v21, v21, v12

    .line 997
    move/from16 v12, v21

    .line 998
    .local v12, "t8":I
    const/4 v13, 0x0

    move/from16 v25, v3

    .end local v3  # "t3":I
    .local v13, "k":I
    .restart local v25  # "t3":I
    :goto_577
    if-ge v13, v2, :cond_5cb

    .line 999
    move/from16 v3, v25

    .line 1000
    .end local v20  # "t5":I
    .local v3, "t5":I
    move/from16 v16, v9

    .line 1001
    .local v16, "t6":I
    move/from16 v20, v12

    .line 1002
    .local v20, "t9":I
    move/from16 v22, v12

    .line 1003
    .local v22, "t11":I
    const/16 v19, 0x2

    move/from16 v23, v20

    move/from16 v20, v3

    move/from16 v3, v19

    .end local v19  # "i":I
    .local v3, "i":I
    .local v20, "t5":I
    .local v23, "t9":I
    :goto_589
    if-ge v3, v0, :cond_5c2

    .line 1004
    add-int/lit8 v20, v20, 0x2

    .line 1005
    add-int/lit8 v16, v16, 0x2

    .line 1006
    add-int/lit8 v23, v23, 0x2

    .line 1007
    add-int/lit8 v22, v22, -0x2

    .line 1008
    add-int/lit8 v19, v20, -0x1

    add-int/lit8 v29, v23, -0x1

    aget v29, p4, v29

    add-int/lit8 v30, v22, -0x1

    aget v30, p4, v30

    add-float v29, v29, v30

    aput v29, p7, v19

    .line 1009
    add-int/lit8 v19, v16, -0x1

    add-int/lit8 v29, v23, -0x1

    aget v29, p4, v29

    add-int/lit8 v30, v22, -0x1

    aget v30, p4, v30

    sub-float v29, v29, v30

    aput v29, p7, v19

    .line 1010
    aget v19, p4, v23

    aget v29, p4, v22

    sub-float v19, v19, v29

    aput v19, p7, v20

    .line 1011
    aget v19, p4, v23

    aget v29, p4, v22

    add-float v19, v19, v29

    aput v19, p7, v16

    .line 1003
    add-int/lit8 v3, v3, 0x2

    goto :goto_589

    .line 1013
    :cond_5c2
    add-int v25, v25, v0

    .line 1014
    add-int/2addr v9, v0

    .line 1015
    add-int/2addr v12, v6

    .line 998
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v3

    goto :goto_577

    .line 990
    .end local v3  # "i":I
    .end local v16  # "t6":I
    .end local v22  # "t11":I
    .end local v23  # "t9":I
    :cond_5cb
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v13

    .end local v9  # "t4":I
    .end local v12  # "t8":I
    .end local v13  # "k":I
    .end local v25  # "t3":I
    .restart local v19  # "i":I
    goto :goto_564

    .line 1018
    .end local v19  # "i":I
    :cond_5d0
    const/16 v3, 0x74

    .line 1019
    .end local v28  # "state":I
    .local v3, "state":I
    move v9, v14

    .end local v11  # "j":I
    .end local v17  # "t1":I
    .end local v18  # "t2":I
    .end local v20  # "t5":I
    .end local v21  # "t7":I
    .local v9, "ai1":F
    move/from16 v12, v23

    .local v12, "t9":I
    move/from16 v13, v24

    .local v13, "l":I
    move/from16 v14, v26

    .restart local v14  # "ik":I
    move/from16 v22, v11

    move v11, v3

    move v12, v8

    move v14, v9

    move/from16 v8, v31

    move/from16 v9, v39

    .restart local v15  # "ar1":F
    goto/16 :goto_655

    .line 920
    .end local v3  # "state":I
    .end local v12  # "t9":I
    .end local v13  # "l":I
    .end local v14  # "ik":I
    .end local v15  # "ar1":F
    .end local v31  # "dcp":F
    .end local v39  # "dsp":F
    .local v8, "dcp":F
    .local v9, "dsp":F
    .local v11, "state":I
    :sswitch_5e4
    move/from16 v31, v8

    move/from16 v39, v9

    move/from16 v28, v11

    const/16 v27, 0x0

    .end local v8  # "dcp":F
    .end local v9  # "dsp":F
    .end local v11  # "state":I
    .restart local v28  # "state":I
    .restart local v31  # "dcp":F
    .restart local v39  # "dsp":F
    mul-int v3, v1, v0

    .line 921
    .end local v6  # "t10":I
    .local v3, "t10":I
    mul-int v5, v2, v0

    .line 922
    sget v6, Lcom/jcraft/jorbis/Drft;->tpi:F

    int-to-float v8, v1

    div-float/2addr v6, v8

    .line 923
    .local v6, "arg":F
    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 924
    .end local v31  # "dcp":F
    .restart local v8  # "dcp":F
    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 925
    .end local v39  # "dsp":F
    .restart local v9  # "dsp":F
    add-int/lit8 v11, v0, -0x1

    const/4 v12, 0x1

    ushr-int/lit8 v7, v11, 0x1

    .line 926
    move/from16 v10, p1

    .line 927
    add-int/lit8 v11, v1, 0x1

    ushr-int/lit8 v4, v11, 0x1

    .line 928
    if-ge v0, v2, :cond_61c

    .line 929
    const/16 v11, 0x67

    .line 930
    .end local v28  # "state":I
    .restart local v11  # "state":I
    move v12, v14

    .local v12, "ai1":F
    move/from16 v13, v23

    .local v13, "t9":I
    move/from16 v14, v24

    .local v14, "l":I
    move/from16 v23, v26

    .local v23, "ik":I
    move v14, v12

    move/from16 v23, v13

    move v12, v6

    move v6, v3

    .restart local v15  # "ar1":F
    goto :goto_655

    .line 932
    .end local v11  # "state":I
    .end local v12  # "ai1":F
    .end local v13  # "t9":I
    .end local v14  # "l":I
    .end local v15  # "ar1":F
    .end local v23  # "ik":I
    .restart local v28  # "state":I
    :cond_61c
    const/4 v11, 0x0

    .line 933
    .local v11, "t1":I
    const/4 v12, 0x0

    .line 934
    .local v12, "t2":I
    const/4 v13, 0x0

    move/from16 v17, v11

    move/from16 v18, v12

    .end local v11  # "t1":I
    .end local v12  # "t2":I
    .local v13, "k":I
    .restart local v17  # "t1":I
    .restart local v18  # "t2":I
    :goto_623
    if-ge v13, v2, :cond_645

    .line 935
    move/from16 v11, v17

    .line 936
    .local v11, "t3":I
    move/from16 v12, v18

    .line 937
    .local v12, "t4":I
    const/16 v16, 0x0

    move/from16 v25, v11

    move/from16 v11, v16

    .local v11, "i":I
    .restart local v25  # "t3":I
    :goto_62f
    if-ge v11, v0, :cond_63c

    .line 938
    aget v16, p4, v12

    aput v16, p7, v25

    .line 939
    add-int/lit8 v25, v25, 0x1

    .line 940
    add-int/lit8 v12, v12, 0x1

    .line 937
    add-int/lit8 v11, v11, 0x1

    goto :goto_62f

    .line 942
    :cond_63c
    add-int v17, v17, v0

    .line 943
    add-int v18, v18, v3

    .line 934
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v11

    goto :goto_623

    .line 945
    .end local v11  # "i":I
    .end local v12  # "t4":I
    .end local v25  # "t3":I
    :cond_645
    const/16 v11, 0x6a

    .line 946
    .end local v28  # "state":I
    .local v11, "state":I
    move v12, v14

    .end local v13  # "k":I
    .end local v17  # "t1":I
    .end local v18  # "t2":I
    .local v12, "ai1":F
    move/from16 v14, v23

    .local v14, "t9":I
    move/from16 v16, v24

    .local v16, "l":I
    move/from16 v23, v26

    .restart local v23  # "ik":I
    move/from16 v16, v13

    move/from16 v23, v14

    move v14, v12

    move v12, v6

    move v6, v3

    .line 1238
    .end local v3  # "t10":I
    .end local v16  # "l":I
    .local v6, "t10":I
    .local v12, "arg":F
    .local v14, "ai1":F
    .restart local v15  # "ar1":F
    .local v23, "t9":I
    .local v24, "l":I
    .local v26, "ik":I
    :goto_655
    move/from16 v3, p3

    goto/16 :goto_2a

    nop

    :sswitch_data_65a
    .sparse-switch
        0x64 -> :sswitch_5e4
        0x67 -> :sswitch_4bc
        0x6a -> :sswitch_4ae
        0x70 -> :sswitch_228
        0x74 -> :sswitch_21a
        0x80 -> :sswitch_d2
        0x84 -> :sswitch_c7
        0x8b -> :sswitch_46
    .end sparse-switch
.end method

.method static dradf2(II[F[F[FI)V
    .registers 23
    .param p0, "ido"  # I
    .param p1, "l1"  # I
    .param p2, "cc"  # [F
    .param p3, "ch"  # [F
    .param p4, "wa1"  # [F
    .param p5, "index"  # I

    .line 158
    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 159
    .local v2, "t1":I
    mul-int v3, v1, v0

    move v4, v3

    .line 160
    .local v3, "t0":I
    .local v4, "t2":I
    shl-int/lit8 v5, v0, 0x1

    .line 161
    .local v5, "t3":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_b
    const/4 v7, 0x1

    if-ge v6, v1, :cond_27

    .line 162
    shl-int/lit8 v8, v2, 0x1

    aget v9, p2, v2

    aget v10, p2, v4

    add-float/2addr v9, v10

    aput v9, p3, v8

    .line 163
    shl-int/lit8 v8, v2, 0x1

    add-int/2addr v8, v5

    sub-int/2addr v8, v7

    aget v7, p2, v2

    aget v9, p2, v4

    sub-float/2addr v7, v9

    aput v7, p3, v8

    .line 164
    add-int/2addr v2, v0

    .line 165
    add-int/2addr v4, v0

    .line 161
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 168
    :cond_27
    const/4 v8, 0x2

    if-ge v0, v8, :cond_2b

    .line 169
    return-void

    .line 171
    :cond_2b
    if-eq v0, v8, :cond_99

    .line 172
    const/4 v2, 0x0

    .line 173
    move v4, v3

    .line 174
    const/4 v6, 0x0

    :goto_30
    if-ge v6, v1, :cond_94

    .line 175
    move v5, v4

    .line 176
    shl-int/lit8 v9, v2, 0x1

    shl-int/lit8 v10, v0, 0x1

    add-int/2addr v9, v10

    .line 177
    .local v9, "t4":I
    move v10, v2

    .line 178
    .local v10, "t5":I
    add-int v11, v2, v2

    .line 179
    .local v11, "t6":I
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_3c
    if-ge v12, v0, :cond_8f

    .line 180
    add-int/lit8 v5, v5, 0x2

    .line 181
    add-int/lit8 v9, v9, -0x2

    .line 182
    add-int/lit8 v10, v10, 0x2

    .line 183
    add-int/lit8 v11, v11, 0x2

    .line 184
    add-int v13, p5, v12

    sub-int/2addr v13, v8

    aget v13, p4, v13

    add-int/lit8 v14, v5, -0x1

    aget v14, p2, v14

    mul-float/2addr v13, v14

    add-int v14, p5, v12

    sub-int/2addr v14, v7

    aget v14, p4, v14

    aget v15, p2, v5

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    .line 185
    .local v13, "tr2":F
    add-int v14, p5, v12

    sub-int/2addr v14, v8

    aget v14, p4, v14

    aget v15, p2, v5

    mul-float/2addr v14, v15

    add-int v15, p5, v12

    sub-int/2addr v15, v7

    aget v15, p4, v15

    add-int/lit8 v16, v5, -0x1

    aget v16, p2, v16

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 186
    .local v14, "ti2":F
    aget v15, p2, v10

    add-float/2addr v15, v14

    aput v15, p3, v11

    .line 187
    aget v15, p2, v10

    sub-float v15, v14, v15

    aput v15, p3, v9

    .line 188
    add-int/lit8 v15, v11, -0x1

    add-int/lit8 v16, v10, -0x1

    aget v16, p2, v16

    add-float v16, v16, v13

    aput v16, p3, v15

    .line 189
    add-int/lit8 v15, v9, -0x1

    add-int/lit8 v16, v10, -0x1

    aget v16, p2, v16

    sub-float v16, v16, v13

    aput v16, p3, v15

    .line 179
    add-int/lit8 v12, v12, 0x2

    goto :goto_3c

    .line 191
    .end local v13  # "tr2":F
    .end local v14  # "ti2":F
    :cond_8f
    add-int/2addr v2, v0

    .line 192
    add-int/2addr v4, v0

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 194
    .end local v9  # "t4":I
    .end local v10  # "t5":I
    .end local v11  # "t6":I
    .end local v12  # "i":I
    :cond_94
    rem-int/lit8 v8, v0, 0x2

    if-ne v8, v7, :cond_99

    .line 195
    return-void

    .line 198
    :cond_99
    move/from16 v2, p0

    add-int/lit8 v7, v0, -0x1

    move v4, v7

    move v5, v7

    .line 199
    add-int/2addr v4, v3

    .line 200
    const/4 v6, 0x0

    :goto_a1
    if-ge v6, v1, :cond_b6

    .line 201
    aget v7, p2, v4

    neg-float v7, v7

    aput v7, p3, v2

    .line 202
    add-int/lit8 v7, v2, -0x1

    aget v8, p2, v5

    aput v8, p3, v7

    .line 203
    shl-int/lit8 v7, v0, 0x1

    add-int/2addr v2, v7

    .line 204
    add-int/2addr v4, v0

    .line 205
    add-int/2addr v5, v0

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    .line 207
    :cond_b6
    return-void
.end method

.method static dradf4(II[F[F[FI[FI[FI)V
    .registers 38
    .param p0, "ido"  # I
    .param p1, "l1"  # I
    .param p2, "cc"  # [F
    .param p3, "ch"  # [F
    .param p4, "wa1"  # [F
    .param p5, "index1"  # I
    .param p6, "wa2"  # [F
    .param p7, "index2"  # I
    .param p8, "wa3"  # [F
    .param p9, "index3"  # I

    .line 213
    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    .line 215
    .local v2, "t0":I
    move v3, v2

    .line 216
    .local v3, "t1":I
    shl-int/lit8 v4, v3, 0x1

    .line 217
    .local v4, "t4":I
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    .line 218
    .local v5, "t2":I
    const/4 v6, 0x0

    .line 220
    .local v6, "t3":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_e
    if-ge v7, v1, :cond_45

    .line 221
    aget v8, p2, v3

    aget v9, p2, v5

    add-float/2addr v8, v9

    .line 222
    .local v8, "tr1":F
    aget v9, p2, v6

    aget v10, p2, v4

    add-float/2addr v9, v10

    .line 224
    .local v9, "tr2":F
    shl-int/lit8 v10, v6, 0x2

    move v11, v10

    .local v11, "t5":I
    add-float v12, v8, v9

    aput v12, p3, v10

    .line 225
    shl-int/lit8 v10, v0, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    sub-float v12, v9, v8

    aput v12, p3, v10

    .line 226
    shl-int/lit8 v10, v0, 0x1

    add-int/2addr v10, v11

    move v11, v10

    add-int/lit8 v10, v10, -0x1

    aget v12, p2, v6

    aget v13, p2, v4

    sub-float/2addr v12, v13

    aput v12, p3, v10

    .line 227
    aget v10, p2, v5

    aget v12, p2, v3

    sub-float/2addr v10, v12

    aput v10, p3, v11

    .line 229
    add-int/2addr v3, v0

    .line 230
    add-int/2addr v5, v0

    .line 231
    add-int/2addr v6, v0

    .line 232
    add-int/2addr v4, v0

    .line 220
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 234
    .end local v8  # "tr1":F
    .end local v9  # "tr2":F
    .end local v11  # "t5":I
    :cond_45
    const/4 v8, 0x2

    if-ge v0, v8, :cond_49

    .line 235
    return-void

    .line 237
    :cond_49
    if-eq v0, v8, :cond_141

    .line 238
    const/4 v3, 0x0

    .line 239
    const/4 v7, 0x0

    :goto_4d
    if-ge v7, v1, :cond_13c

    .line 240
    move v5, v3

    .line 241
    shl-int/lit8 v4, v3, 0x2

    .line 242
    shl-int/lit8 v9, v0, 0x1

    move v10, v9

    .local v10, "t6":I
    add-int/2addr v9, v4

    .line 243
    .local v9, "t5":I
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_57
    if-ge v11, v0, :cond_137

    .line 244
    add-int/lit8 v5, v5, 0x2

    move v6, v5

    .line 245
    add-int/lit8 v4, v4, 0x2

    .line 246
    add-int/lit8 v9, v9, -0x2

    .line 248
    add-int/2addr v6, v2

    .line 249
    add-int v12, p5, v11

    sub-int/2addr v12, v8

    aget v12, p4, v12

    add-int/lit8 v13, v6, -0x1

    aget v13, p2, v13

    mul-float/2addr v12, v13

    add-int v13, p5, v11

    add-int/lit8 v13, v13, -0x1

    aget v13, p4, v13

    aget v14, p2, v6

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 250
    .local v12, "cr2":F
    add-int v13, p5, v11

    sub-int/2addr v13, v8

    aget v13, p4, v13

    aget v14, p2, v6

    mul-float/2addr v13, v14

    add-int v14, p5, v11

    add-int/lit8 v14, v14, -0x1

    aget v14, p4, v14

    add-int/lit8 v15, v6, -0x1

    aget v15, p2, v15

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 251
    .local v13, "ci2":F
    add-int/2addr v6, v2

    .line 252
    add-int v14, p7, v11

    sub-int/2addr v14, v8

    aget v14, p6, v14

    add-int/lit8 v15, v6, -0x1

    aget v15, p2, v15

    mul-float/2addr v14, v15

    add-int v15, p7, v11

    add-int/lit8 v15, v15, -0x1

    aget v15, p6, v15

    aget v16, p2, v6

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    .line 253
    .local v14, "cr3":F
    add-int v15, p7, v11

    sub-int/2addr v15, v8

    aget v15, p6, v15

    aget v16, p2, v6

    mul-float v15, v15, v16

    add-int v16, p7, v11

    add-int/lit8 v16, v16, -0x1

    aget v16, p6, v16

    add-int/lit8 v17, v6, -0x1

    aget v17, p2, v17

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    .line 254
    .local v15, "ci3":F
    add-int/2addr v6, v2

    .line 255
    add-int v16, p9, v11

    add-int/lit8 v16, v16, -0x2

    aget v16, p8, v16

    add-int/lit8 v17, v6, -0x1

    aget v17, p2, v17

    mul-float v16, v16, v17

    add-int v17, p9, v11

    add-int/lit8 v17, v17, -0x1

    aget v17, p8, v17

    aget v18, p2, v6

    mul-float v17, v17, v18

    add-float v16, v16, v17

    .line 256
    .local v16, "cr4":F
    add-int v17, p9, v11

    add-int/lit8 v17, v17, -0x2

    aget v17, p8, v17

    aget v18, p2, v6

    mul-float v17, v17, v18

    add-int v18, p9, v11

    add-int/lit8 v18, v18, -0x1

    aget v18, p8, v18

    add-int/lit8 v19, v6, -0x1

    aget v19, p2, v19

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    .line 258
    .local v17, "ci4":F
    add-float v18, v12, v16

    .line 259
    .local v18, "tr1":F
    sub-float v19, v16, v12

    .line 260
    .local v19, "tr4":F
    add-float v20, v13, v17

    .line 261
    .local v20, "ti1":F
    sub-float v21, v13, v17

    .line 263
    .local v21, "ti4":F
    aget v22, p2, v5

    add-float v22, v22, v15

    .line 264
    .local v22, "ti2":F
    aget v23, p2, v5

    sub-float v23, v23, v15

    .line 265
    .local v23, "ti3":F
    add-int/lit8 v24, v5, -0x1

    aget v24, p2, v24

    add-float v24, v24, v14

    .line 266
    .local v24, "tr2":F
    add-int/lit8 v25, v5, -0x1

    aget v25, p2, v25

    sub-float v25, v25, v14

    .line 268
    .local v25, "tr3":F
    add-int/lit8 v26, v4, -0x1

    add-float v27, v18, v24

    aput v27, p3, v26

    .line 269
    add-float v26, v20, v22

    aput v26, p3, v4

    .line 271
    add-int/lit8 v26, v9, -0x1

    sub-float v27, v25, v21

    aput v27, p3, v26

    .line 272
    sub-float v26, v19, v23

    aput v26, p3, v9

    .line 274
    add-int v26, v4, v10

    add-int/lit8 v26, v26, -0x1

    add-float v27, v21, v25

    aput v27, p3, v26

    .line 275
    add-int v26, v4, v10

    add-float v27, v19, v23

    aput v27, p3, v26

    .line 277
    add-int v26, v9, v10

    add-int/lit8 v26, v26, -0x1

    sub-float v27, v24, v18

    aput v27, p3, v26

    .line 278
    add-int v26, v9, v10

    sub-float v27, v20, v22

    aput v27, p3, v26

    .line 243
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_57

    .line 280
    .end local v12  # "cr2":F
    .end local v13  # "ci2":F
    .end local v14  # "cr3":F
    .end local v15  # "ci3":F
    .end local v16  # "cr4":F
    .end local v17  # "ci4":F
    .end local v18  # "tr1":F
    .end local v19  # "tr4":F
    .end local v20  # "ti1":F
    .end local v21  # "ti4":F
    .end local v22  # "ti2":F
    .end local v23  # "ti3":F
    .end local v24  # "tr2":F
    .end local v25  # "tr3":F
    :cond_137
    add-int/2addr v3, v0

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4d

    .line 282
    .end local v9  # "t5":I
    .end local v10  # "t6":I
    .end local v11  # "i":I
    :cond_13c
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_141

    .line 283
    return-void

    .line 286
    :cond_141
    add-int v8, v2, v0

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    shl-int/lit8 v9, v2, 0x1

    add-int/2addr v8, v9

    .line 287
    .end local v5  # "t2":I
    .local v8, "t2":I
    shl-int/lit8 v5, v0, 0x2

    .line 288
    .end local v6  # "t3":I
    .local v5, "t3":I
    move/from16 v4, p0

    .line 289
    shl-int/lit8 v6, v0, 0x1

    .line 290
    .local v6, "t5":I
    move/from16 v9, p0

    .line 292
    .local v9, "t6":I
    const/4 v7, 0x0

    :goto_152
    if-ge v7, v1, :cond_191

    .line 293
    sget v10, Lcom/jcraft/jorbis/Drft;->hsqt2:F

    neg-float v10, v10

    aget v11, p2, v3

    aget v12, p2, v8

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    .line 294
    .local v10, "ti1":F
    sget v11, Lcom/jcraft/jorbis/Drft;->hsqt2:F

    aget v12, p2, v3

    aget v13, p2, v8

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    .line 296
    .local v11, "tr1":F
    add-int/lit8 v12, v4, -0x1

    add-int/lit8 v13, v9, -0x1

    aget v13, p2, v13

    add-float/2addr v13, v11

    aput v13, p3, v12

    .line 297
    add-int v12, v4, v6

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v9, -0x1

    aget v13, p2, v13

    sub-float/2addr v13, v11

    aput v13, p3, v12

    .line 299
    add-int v12, v3, v2

    aget v12, p2, v12

    sub-float v12, v10, v12

    aput v12, p3, v4

    .line 300
    add-int v12, v4, v6

    add-int v13, v3, v2

    aget v13, p2, v13

    add-float/2addr v13, v10

    aput v13, p3, v12

    .line 302
    add-int/2addr v3, v0

    .line 303
    add-int/2addr v8, v0

    .line 304
    add-int/2addr v4, v5

    .line 305
    add-int/2addr v9, v0

    .line 292
    add-int/lit8 v7, v7, 0x1

    goto :goto_152

    .line 307
    .end local v10  # "ti1":F
    .end local v11  # "tr1":F
    :cond_191
    return-void
.end method

.method static dradfg(IIII[F[F[F[F[F[FI)V
    .registers 52
    .param p0, "ido"  # I
    .param p1, "ip"  # I
    .param p2, "l1"  # I
    .param p3, "idl1"  # I
    .param p4, "cc"  # [F
    .param p5, "c1"  # [F
    .param p6, "c2"  # [F
    .param p7, "ch"  # [F
    .param p8, "ch2"  # [F
    .param p9, "wa"  # [F
    .param p10, "index"  # I

    .line 312
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 315
    .local v4, "t2":I
    const/4 v5, 0x0

    .local v5, "dcp":F
    const/4 v6, 0x0

    .line 318
    .local v6, "dsp":F
    sget v7, Lcom/jcraft/jorbis/Drft;->tpi:F

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 319
    .local v7, "arg":F
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 320
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 321
    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    shr-int/2addr v8, v9

    .line 322
    .local v8, "ipph":I
    move/from16 v10, p1

    .line 323
    .local v10, "ipp2":I
    move/from16 v11, p0

    .line 324
    .local v11, "idp2":I
    add-int/lit8 v12, v0, -0x1

    shr-int/2addr v12, v9

    .line 325
    .local v12, "nbd":I
    mul-int v13, v2, v0

    .line 326
    .local v13, "t0":I
    mul-int v14, v1, v0

    .line 328
    .local v14, "t10":I
    const/16 v15, 0x64

    .local v15, "state":I
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v16

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v17

    move/from16 v27, v26

    move/from16 v17, v25

    .line 330
    :goto_46
    sparse-switch v15, :sswitch_data_5d6

    move/from16 v30, v4

    move/from16 v28, v7

    move/from16 v31, v9

    move/from16 v32, v11

    move/from16 v29, v15

    .end local v4  # "t2":I
    .end local v7  # "arg":F
    .end local v11  # "idp2":I
    .end local v15  # "state":I
    .local v28, "arg":F
    .local v29, "state":I
    .local v30, "t2":I
    .local v32, "idp2":I
    move/from16 v1, v20

    .local v1, "l":I
    move/from16 v2, v16

    .local v2, "is":I
    move/from16 v4, v17

    .local v4, "ik":I
    move/from16 v7, v26

    .local v7, "ai1":F
    move/from16 v9, v27

    move/from16 v4, v30

    .local v9, "ar1":F
    goto/16 :goto_5c9

    .end local v1  # "l":I
    .end local v2  # "is":I
    .end local v9  # "ar1":F
    .end local v28  # "arg":F
    .end local v29  # "state":I
    .end local v30  # "t2":I
    .end local v32  # "idp2":I
    .local v4, "t2":I
    .local v7, "arg":F
    .restart local v11  # "idp2":I
    .restart local v15  # "state":I
    :sswitch_61
    move/from16 v9, v24

    .local v9, "t5":I
    move/from16 v22, v25

    .local v16, "is":I
    .local v17, "ik":I
    .local v18, "t1":I
    .local v19, "j":I
    .local v20, "l":I
    .local v21, "t3":I
    .local v22, "t4":I
    move/from16 v23, v26

    .local v23, "ai1":F
    move/from16 v24, v27

    .line 595
    .local v24, "ar1":F
    move/from16 v28, v7

    .end local v7  # "arg":F
    .restart local v28  # "arg":F
    neg-int v7, v0

    .line 596
    .end local v18  # "t1":I
    .local v7, "t1":I
    const/16 v18, 0x0

    .line 597
    .end local v21  # "t3":I
    .local v18, "t3":I
    const/16 v21, 0x0

    .line 598
    .end local v22  # "t4":I
    .local v21, "t4":I
    mul-int v9, v10, v13

    .line 599
    const/16 v19, 0x1

    move/from16 v29, v15

    move/from16 v15, v19

    .end local v19  # "j":I
    .local v15, "j":I
    .restart local v29  # "state":I
    :goto_78
    if-ge v15, v8, :cond_df

    .line 600
    add-int/2addr v7, v4

    .line 601
    add-int v18, v18, v4

    .line 602
    add-int v21, v21, v13

    .line 603
    sub-int/2addr v9, v13

    .line 604
    const/16 v19, 0x2

    move/from16 v30, v4

    move/from16 v4, v19

    .local v4, "i":I
    .restart local v30  # "t2":I
    :goto_86
    if-ge v4, v0, :cond_d8

    .line 605
    add-int v19, v11, v7

    sub-int v19, v19, v4

    .line 606
    .local v19, "t6":I
    add-int v22, v4, v18

    .line 607
    .local v22, "t7":I
    add-int v25, v4, v21

    .line 608
    .local v25, "t8":I
    add-int v26, v4, v9

    .line 609
    .local v26, "t9":I
    const/16 v27, 0x0

    move/from16 v40, v27

    move/from16 v27, v7

    move/from16 v7, v40

    .local v7, "k":I
    .local v27, "t1":I
    :goto_9a
    if-ge v7, v2, :cond_d3

    .line 610
    add-int/lit8 v31, v22, -0x1

    add-int/lit8 v32, v25, -0x1

    aget v32, p7, v32

    add-int/lit8 v33, v26, -0x1

    aget v33, p7, v33

    add-float v32, v32, v33

    aput v32, p4, v31

    .line 611
    add-int/lit8 v31, v19, -0x1

    add-int/lit8 v32, v25, -0x1

    aget v32, p7, v32

    add-int/lit8 v33, v26, -0x1

    aget v33, p7, v33

    sub-float v32, v32, v33

    aput v32, p4, v31

    .line 612
    aget v31, p7, v25

    aget v32, p7, v26

    add-float v31, v31, v32

    aput v31, p4, v22

    .line 613
    aget v31, p7, v26

    aget v32, p7, v25

    sub-float v31, v31, v32

    aput v31, p4, v19

    .line 614
    add-int v19, v19, v14

    .line 615
    add-int v22, v22, v14

    .line 616
    add-int v25, v25, v0

    .line 617
    add-int v26, v26, v0

    .line 609
    add-int/lit8 v7, v7, 0x1

    goto :goto_9a

    .line 604
    :cond_d3
    add-int/lit8 v4, v4, 0x2

    move/from16 v7, v27

    goto :goto_86

    .line 599
    .end local v19  # "t6":I
    .end local v22  # "t7":I
    .end local v25  # "t8":I
    .end local v26  # "t9":I
    .end local v27  # "t1":I
    .local v7, "t1":I
    :cond_d8
    move/from16 v27, v7

    .end local v7  # "t1":I
    .restart local v27  # "t1":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v30

    goto :goto_78

    .line 624
    .end local v27  # "t1":I
    .end local v30  # "t2":I
    .local v4, "t2":I
    .restart local v7  # "t1":I
    :cond_df
    return-void

    .line 330
    .end local v9  # "t5":I
    .end local v16  # "is":I
    .end local v17  # "ik":I
    .end local v18  # "t3":I
    .end local v20  # "l":I
    .end local v21  # "t4":I
    .end local v23  # "ai1":F
    .end local v24  # "ar1":F
    .end local v28  # "arg":F
    .end local v29  # "state":I
    .local v7, "arg":F
    .local v15, "state":I
    :sswitch_e0
    move/from16 v30, v4

    move/from16 v28, v7

    move/from16 v29, v15

    .end local v4  # "t2":I
    .end local v7  # "arg":F
    .end local v15  # "state":I
    .restart local v28  # "arg":F
    .restart local v29  # "state":I
    .restart local v30  # "t2":I
    move/from16 v4, v23

    .local v4, "i":I
    move/from16 v7, v20

    .local v7, "l":I
    move/from16 v15, v21

    .local v15, "t3":I
    .restart local v16  # "is":I
    .restart local v17  # "ik":I
    move/from16 v18, v19

    .local v18, "j":I
    move/from16 v19, v26

    .local v19, "ai1":F
    move/from16 v20, v27

    move v9, v7

    move v7, v4

    move/from16 v4, v30

    .local v20, "ar1":F
    goto :goto_13c

    .end local v16  # "is":I
    .end local v17  # "ik":I
    .end local v18  # "j":I
    .end local v19  # "ai1":F
    .end local v20  # "ar1":F
    .end local v28  # "arg":F
    .end local v29  # "state":I
    .end local v30  # "t2":I
    .local v4, "t2":I
    .local v7, "arg":F
    .local v15, "state":I
    :sswitch_f7
    move/from16 v30, v4

    move/from16 v28, v7

    move/from16 v29, v15

    .end local v4  # "t2":I
    .end local v7  # "arg":F
    .end local v15  # "state":I
    .restart local v28  # "arg":F
    .restart local v29  # "state":I
    .restart local v30  # "t2":I
    move/from16 v7, v20

    .local v7, "l":I
    move/from16 v15, v21

    .local v15, "t3":I
    .restart local v16  # "is":I
    .restart local v17  # "ik":I
    move/from16 v4, v18

    .local v4, "t1":I
    move/from16 v18, v22

    .local v18, "k":I
    .local v19, "j":I
    move/from16 v20, v26

    .local v20, "ai1":F
    move/from16 v21, v27

    .line 527
    .local v21, "ar1":F
    const/16 v22, 0x0

    move/from16 v40, v18

    move/from16 v18, v4

    move/from16 v4, v22

    move/from16 v22, v40

    .local v4, "i":I
    .local v18, "t1":I
    .local v22, "k":I
    :goto_113
    if-ge v4, v0, :cond_132

    .line 528
    move/from16 v18, v4

    .line 529
    move/from16 v23, v4

    .line 530
    .end local v30  # "t2":I
    .local v23, "t2":I
    const/16 v22, 0x0

    move/from16 v9, v22

    move/from16 v30, v23

    .end local v22  # "k":I
    .end local v23  # "t2":I
    .local v9, "k":I
    .restart local v30  # "t2":I
    :goto_11f
    if-ge v9, v2, :cond_12c

    .line 531
    aget v22, p7, v18

    aput v22, p4, v30

    .line 532
    add-int v18, v18, v0

    .line 533
    add-int v30, v30, v14

    .line 530
    add-int/lit8 v9, v9, 0x1

    goto :goto_11f

    .line 527
    :cond_12c
    add-int/lit8 v4, v4, 0x1

    move/from16 v22, v9

    const/4 v9, 0x1

    goto :goto_113

    .end local v9  # "k":I
    .restart local v22  # "k":I
    :cond_132
    move v9, v7

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move v7, v4

    move/from16 v4, v30

    .line 537
    .end local v21  # "ar1":F
    .end local v22  # "k":I
    .end local v30  # "t2":I
    .local v4, "t2":I
    .local v7, "i":I
    .local v9, "l":I
    .local v18, "j":I
    .local v19, "ai1":F
    .local v20, "ar1":F
    :goto_13c
    const/16 v21, 0x0

    .line 538
    .local v21, "t1":I
    shl-int/lit8 v4, v0, 0x1

    .line 539
    const/4 v15, 0x0

    .line 540
    mul-int v23, v10, v13

    .line 541
    .local v23, "t4":I
    const/16 v18, 0x1

    move/from16 v40, v18

    move/from16 v18, v7

    move/from16 v7, v40

    .local v7, "j":I
    .local v18, "i":I
    :goto_14b
    if-ge v7, v8, :cond_180

    .line 542
    add-int v21, v21, v4

    .line 543
    add-int/2addr v15, v13

    .line 544
    sub-int v23, v23, v13

    .line 546
    move/from16 v22, v21

    .line 547
    .local v22, "t5":I
    move/from16 v24, v15

    .line 548
    .local v24, "t6":I
    move/from16 v25, v23

    .line 550
    .local v25, "t7":I
    const/16 v26, 0x0

    move/from16 v27, v9

    move/from16 v9, v26

    move/from16 v40, v24

    move/from16 v24, v22

    move/from16 v22, v40

    .local v9, "k":I
    .local v22, "t6":I
    .local v24, "t5":I
    .local v27, "l":I
    :goto_164
    if-ge v9, v2, :cond_179

    .line 551
    add-int/lit8 v26, v24, -0x1

    aget v30, p7, v22

    aput v30, p4, v26

    .line 552
    aget v26, p7, v25

    aput v26, p4, v24

    .line 553
    add-int v24, v24, v14

    .line 554
    add-int v22, v22, v0

    .line 555
    add-int v25, v25, v0

    .line 550
    add-int/lit8 v9, v9, 0x1

    goto :goto_164

    .line 541
    :cond_179
    add-int/lit8 v7, v7, 0x1

    move/from16 v22, v9

    move/from16 v9, v27

    goto :goto_14b

    .line 559
    .end local v22  # "t6":I
    .end local v24  # "t5":I
    .end local v25  # "t7":I
    .end local v27  # "l":I
    .local v9, "l":I
    :cond_180
    move/from16 v27, v9

    .end local v9  # "l":I
    .restart local v27  # "l":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_186

    .line 560
    return-void

    .line 561
    :cond_186
    if-ge v12, v2, :cond_1a3

    .line 562
    const/16 v9, 0x8d

    .line 563
    .end local v29  # "state":I
    .local v9, "state":I
    move/from16 v32, v11

    move/from16 v26, v19

    move/from16 v25, v23

    const/16 v31, 0x1

    move/from16 v19, v7

    move/from16 v23, v18

    move/from16 v18, v21

    move/from16 v21, v15

    move v15, v9

    move/from16 v40, v27

    move/from16 v27, v20

    move/from16 v20, v40

    goto/16 :goto_5c9

    .line 566
    .end local v9  # "state":I
    .restart local v29  # "state":I
    :cond_1a3
    neg-int v9, v0

    .line 567
    .end local v21  # "t1":I
    .local v9, "t1":I
    const/4 v15, 0x0

    .line 568
    const/16 v21, 0x0

    .line 569
    .end local v23  # "t4":I
    .local v21, "t4":I
    mul-int v22, v10, v13

    .line 570
    .local v22, "t5":I
    const/4 v7, 0x1

    :goto_1aa
    if-ge v7, v8, :cond_22e

    .line 571
    add-int/2addr v9, v4

    .line 572
    add-int/2addr v15, v4

    .line 573
    add-int v21, v21, v13

    .line 574
    sub-int v22, v22, v13

    .line 575
    move/from16 v23, v9

    .line 576
    .local v23, "t6":I
    move/from16 v24, v15

    .line 577
    .local v24, "t7":I
    move/from16 v25, v21

    .line 578
    .local v25, "t8":I
    move/from16 v26, v22

    .line 579
    .restart local v26  # "t9":I
    const/16 v30, 0x0

    move/from16 v40, v30

    move/from16 v30, v4

    move/from16 v4, v40

    .local v4, "k":I
    .restart local v30  # "t2":I
    :goto_1c2
    if-ge v4, v2, :cond_226

    .line 580
    const/16 v18, 0x2

    move/from16 v32, v9

    move/from16 v9, v18

    .end local v18  # "i":I
    .local v9, "i":I
    .local v32, "t1":I
    :goto_1ca
    if-ge v9, v0, :cond_217

    .line 581
    sub-int v18, v11, v9

    .line 582
    .local v18, "ic":I
    add-int v33, v9, v24

    const/16 v31, 0x1

    add-int/lit8 v33, v33, -0x1

    add-int v34, v9, v25

    add-int/lit8 v34, v34, -0x1

    aget v34, p7, v34

    add-int v35, v9, v26

    add-int/lit8 v35, v35, -0x1

    aget v35, p7, v35

    add-float v34, v34, v35

    aput v34, p4, v33

    .line 583
    add-int v33, v18, v23

    add-int/lit8 v33, v33, -0x1

    add-int v34, v9, v25

    add-int/lit8 v34, v34, -0x1

    aget v34, p7, v34

    add-int v35, v9, v26

    add-int/lit8 v35, v35, -0x1

    aget v35, p7, v35

    sub-float v34, v34, v35

    aput v34, p4, v33

    .line 584
    add-int v33, v9, v24

    add-int v34, v9, v25

    aget v34, p7, v34

    add-int v35, v9, v26

    aget v35, p7, v35

    add-float v34, v34, v35

    aput v34, p4, v33

    .line 585
    add-int v33, v18, v23

    add-int v34, v9, v26

    aget v34, p7, v34

    add-int v35, v9, v25

    aget v35, p7, v35

    sub-float v34, v34, v35

    aput v34, p4, v33

    .line 580
    add-int/lit8 v9, v9, 0x2

    goto :goto_1ca

    .line 587
    .end local v18  # "ic":I
    :cond_217
    add-int v23, v23, v14

    .line 588
    add-int v24, v24, v14

    .line 589
    add-int v25, v25, v0

    .line 590
    add-int v26, v26, v0

    .line 579
    add-int/lit8 v4, v4, 0x1

    move/from16 v18, v9

    move/from16 v9, v32

    goto :goto_1c2

    .end local v32  # "t1":I
    .local v9, "t1":I
    .local v18, "i":I
    :cond_226
    move/from16 v32, v9

    .line 570
    .end local v9  # "t1":I
    .end local v18  # "i":I
    .restart local v32  # "t1":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v30

    .end local v4  # "k":I
    .end local v23  # "t6":I
    .end local v24  # "t7":I
    .end local v25  # "t8":I
    .end local v26  # "t9":I
    .restart local v18  # "i":I
    goto/16 :goto_1aa

    .line 593
    .end local v18  # "i":I
    .end local v30  # "t2":I
    .end local v32  # "t1":I
    .local v4, "t2":I
    .restart local v9  # "t1":I
    :cond_22e
    return-void

    .line 330
    .end local v9  # "t1":I
    .end local v16  # "is":I
    .end local v17  # "ik":I
    .end local v19  # "ai1":F
    .end local v20  # "ar1":F
    .end local v21  # "t4":I
    .end local v22  # "t5":I
    .end local v27  # "l":I
    .end local v28  # "arg":F
    .end local v29  # "state":I
    .local v7, "arg":F
    .local v15, "state":I
    :sswitch_22f
    move/from16 v30, v4

    move/from16 v28, v7

    move/from16 v29, v15

    .end local v4  # "t2":I
    .end local v7  # "arg":F
    .end local v15  # "state":I
    .restart local v28  # "arg":F
    .restart local v29  # "state":I
    .restart local v30  # "t2":I
    move/from16 v4, v16

    .local v4, "is":I
    move/from16 v7, v17

    .local v7, "ik":I
    move/from16 v9, v18

    .restart local v9  # "t1":I
    move/from16 v15, v19

    move/from16 v32, v11

    move v11, v15

    const/16 v31, 0x1

    move v15, v4

    move/from16 v4, v30

    .local v15, "j":I
    goto/16 :goto_461

    .line 332
    .end local v9  # "t1":I
    .end local v28  # "arg":F
    .end local v29  # "state":I
    .end local v30  # "t2":I
    .local v4, "t2":I
    .local v7, "arg":F
    .local v15, "state":I
    :sswitch_247
    move/from16 v30, v4

    move/from16 v28, v7

    move/from16 v29, v15

    .end local v4  # "t2":I
    .end local v7  # "arg":F
    .end local v15  # "state":I
    .restart local v28  # "arg":F
    .restart local v29  # "state":I
    .restart local v30  # "t2":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_269

    .line 333
    const/16 v4, 0x77

    .line 334
    .end local v29  # "state":I
    .local v4, "state":I
    move/from16 v7, v20

    .local v7, "l":I
    move/from16 v9, v16

    .local v9, "is":I
    move/from16 v15, v17

    .local v15, "ik":I
    move/from16 v16, v26

    .local v16, "ai1":F
    move/from16 v17, v27

    move/from16 v32, v11

    const/16 v31, 0x1

    move/from16 v16, v9

    move/from16 v17, v15

    move v15, v4

    move/from16 v4, v30

    .local v17, "ar1":F
    goto/16 :goto_5c9

    .line 336
    .end local v4  # "state":I
    .end local v7  # "l":I
    .end local v9  # "is":I
    .end local v15  # "ik":I
    .end local v16  # "ai1":F
    .end local v17  # "ar1":F
    .restart local v29  # "state":I
    :cond_269
    const/4 v4, 0x0

    move v7, v4

    .local v7, "ik":I
    :goto_26b
    if-ge v7, v3, :cond_274

    .line 337
    aget v4, p6, v7

    aput v4, p8, v7

    .line 336
    add-int/lit8 v7, v7, 0x1

    goto :goto_26b

    .line 339
    :cond_274
    const/4 v4, 0x0

    .line 340
    .local v4, "t1":I
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_276
    if-ge v9, v1, :cond_290

    .line 341
    add-int/2addr v4, v13

    .line 342
    move v15, v4

    .line 343
    .end local v30  # "t2":I
    .local v15, "t2":I
    const/16 v16, 0x0

    move/from16 v30, v15

    move/from16 v15, v16

    .local v15, "k":I
    .restart local v30  # "t2":I
    :goto_280
    if-ge v15, v2, :cond_28b

    .line 344
    aget v16, p5, v30

    aput v16, p7, v30

    .line 345
    add-int v30, v30, v0

    .line 343
    add-int/lit8 v15, v15, 0x1

    goto :goto_280

    .line 340
    :cond_28b
    add-int/lit8 v9, v9, 0x1

    move/from16 v22, v15

    goto :goto_276

    .line 349
    .end local v15  # "k":I
    :cond_290
    neg-int v15, v0

    .line 350
    .local v15, "is":I
    const/4 v4, 0x0

    .line 351
    if-le v12, v2, :cond_30a

    .line 352
    const/4 v9, 0x1

    :goto_295
    if-ge v9, v1, :cond_302

    .line 353
    add-int/2addr v4, v13

    .line 354
    add-int/2addr v15, v0

    .line 355
    move/from16 v16, v7

    .end local v7  # "ik":I
    .local v16, "ik":I
    neg-int v7, v0

    add-int/2addr v7, v4

    .line 356
    .end local v30  # "t2":I
    .local v7, "t2":I
    const/16 v17, 0x0

    move/from16 v30, v7

    move/from16 v7, v17

    .local v7, "k":I
    .restart local v30  # "t2":I
    :goto_2a3
    if-ge v7, v2, :cond_2f9

    .line 357
    add-int/lit8 v17, v15, -0x1

    .line 358
    .local v17, "idij":I
    add-int v30, v30, v0

    .line 359
    move/from16 v18, v30

    .line 360
    .local v18, "t3":I
    const/16 v19, 0x2

    move/from16 v40, v19

    move/from16 v19, v4

    move/from16 v4, v40

    .local v4, "i":I
    .local v19, "t1":I
    :goto_2b3
    if-ge v4, v0, :cond_2f2

    .line 361
    add-int/lit8 v17, v17, 0x2

    .line 362
    add-int/lit8 v18, v18, 0x2

    .line 363
    add-int/lit8 v20, v18, -0x1

    add-int v21, p10, v17

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget v21, p9, v21

    add-int/lit8 v22, v18, -0x1

    aget v22, p5, v22

    mul-float v21, v21, v22

    add-int v22, p10, v17

    aget v22, p9, v22

    aget v23, p5, v18

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aput v21, p7, v20

    .line 364
    add-int v20, p10, v17

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    aget v20, p9, v20

    aget v21, p5, v18

    mul-float v20, v20, v21

    add-int v21, p10, v17

    aget v21, p9, v21

    add-int/lit8 v22, v18, -0x1

    aget v22, p5, v22

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    aput v20, p7, v18

    .line 360
    add-int/lit8 v4, v4, 0x2

    goto :goto_2b3

    .line 356
    :cond_2f2
    add-int/lit8 v7, v7, 0x1

    move/from16 v23, v4

    move/from16 v4, v19

    goto :goto_2a3

    .line 352
    .end local v17  # "idij":I
    .end local v18  # "t3":I
    .end local v19  # "t1":I
    .local v4, "t1":I
    :cond_2f9
    move/from16 v19, v4

    .end local v4  # "t1":I
    .restart local v19  # "t1":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v22, v7

    move/from16 v7, v16

    goto :goto_295

    .end local v16  # "ik":I
    .end local v19  # "t1":I
    .restart local v4  # "t1":I
    .local v7, "ik":I
    :cond_302
    move/from16 v16, v7

    .end local v7  # "ik":I
    .restart local v16  # "ik":I
    move/from16 v32, v11

    const/16 v31, 0x1

    goto/16 :goto_37f

    .line 371
    .end local v16  # "ik":I
    .restart local v7  # "ik":I
    :cond_30a
    move/from16 v16, v7

    .end local v7  # "ik":I
    .restart local v16  # "ik":I
    const/4 v7, 0x1

    move v9, v7

    :goto_30e
    if-ge v9, v1, :cond_37b

    .line 372
    add-int/2addr v15, v0

    .line 373
    add-int/lit8 v7, v15, -0x1

    .line 374
    .local v7, "idij":I
    add-int/2addr v4, v13

    .line 375
    move/from16 v17, v4

    .line 376
    .end local v30  # "t2":I
    .local v17, "t2":I
    const/16 v18, 0x2

    move/from16 v30, v17

    move/from16 v4, v18

    .local v4, "i":I
    .local v17, "t1":I
    .restart local v30  # "t2":I
    :goto_31c
    if-ge v4, v0, :cond_370

    .line 377
    add-int/lit8 v7, v7, 0x2

    .line 378
    add-int/lit8 v30, v30, 0x2

    .line 379
    move/from16 v18, v30

    .line 380
    .restart local v18  # "t3":I
    const/16 v19, 0x0

    move/from16 v32, v11

    move/from16 v11, v19

    .local v11, "k":I
    .local v32, "idp2":I
    :goto_32a
    if-ge v11, v2, :cond_367

    .line 381
    add-int/lit8 v19, v18, -0x1

    add-int v20, p10, v7

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    aget v20, p9, v20

    add-int/lit8 v21, v18, -0x1

    aget v21, p5, v21

    mul-float v20, v20, v21

    add-int v21, p10, v7

    aget v21, p9, v21

    aget v22, p5, v18

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aput v20, p7, v19

    .line 382
    add-int v19, p10, v7

    const/16 v31, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v19, p9, v19

    aget v20, p5, v18

    mul-float v19, v19, v20

    add-int v20, p10, v7

    aget v20, p9, v20

    add-int/lit8 v21, v18, -0x1

    aget v21, p5, v21

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    aput v19, p7, v18

    .line 383
    add-int v18, v18, v0

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto :goto_32a

    .line 376
    :cond_367
    const/16 v31, 0x1

    add-int/lit8 v4, v4, 0x2

    move/from16 v22, v11

    move/from16 v11, v32

    goto :goto_31c

    .line 371
    .end local v18  # "t3":I
    .end local v32  # "idp2":I
    .local v11, "idp2":I
    :cond_370
    move/from16 v32, v11

    const/16 v31, 0x1

    .end local v11  # "idp2":I
    .restart local v32  # "idp2":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v23, v4

    move/from16 v4, v17

    goto :goto_30e

    .end local v7  # "idij":I
    .end local v17  # "t1":I
    .end local v32  # "idp2":I
    .local v4, "t1":I
    .restart local v11  # "idp2":I
    :cond_37b
    move/from16 v32, v11

    const/16 v31, 0x1

    .line 389
    .end local v11  # "idp2":I
    .restart local v32  # "idp2":I
    :goto_37f
    const/4 v4, 0x0

    .line 390
    mul-int v7, v10, v13

    .line 391
    .end local v30  # "t2":I
    .local v7, "t2":I
    if-ge v12, v2, :cond_3f4

    .line 392
    const/4 v9, 0x1

    move/from16 v40, v9

    move v9, v4

    move v4, v7

    move/from16 v7, v40

    .local v4, "t2":I
    .local v7, "j":I
    .local v9, "t1":I
    :goto_38b
    if-ge v7, v8, :cond_3ef

    .line 393
    add-int/2addr v9, v13

    .line 394
    sub-int/2addr v4, v13

    .line 395
    move v11, v9

    .line 396
    .local v11, "t3":I
    move/from16 v17, v4

    .line 397
    .local v17, "t4":I
    const/16 v18, 0x2

    move/from16 v25, v17

    move/from16 v4, v18

    .local v4, "i":I
    .local v17, "t2":I
    .local v25, "t4":I
    :goto_398
    if-ge v4, v0, :cond_3e6

    .line 398
    add-int/lit8 v11, v11, 0x2

    .line 399
    add-int/lit8 v25, v25, 0x2

    .line 400
    sub-int v18, v11, v0

    .line 401
    .local v18, "t5":I
    sub-int v19, v25, v0

    .line 402
    .local v19, "t6":I
    const/16 v20, 0x0

    move/from16 v24, v18

    move/from16 v18, v9

    move/from16 v9, v20

    .local v9, "k":I
    .local v18, "t1":I
    .local v24, "t5":I
    :goto_3aa
    if-ge v9, v2, :cond_3df

    .line 403
    add-int v24, v24, v0

    .line 404
    add-int v19, v19, v0

    .line 405
    add-int/lit8 v20, v24, -0x1

    add-int/lit8 v21, v24, -0x1

    aget v21, p7, v21

    add-int/lit8 v22, v19, -0x1

    aget v22, p7, v22

    add-float v21, v21, v22

    aput v21, p5, v20

    .line 406
    add-int/lit8 v20, v19, -0x1

    aget v21, p7, v24

    aget v22, p7, v19

    sub-float v21, v21, v22

    aput v21, p5, v20

    .line 407
    aget v20, p7, v24

    aget v21, p7, v19

    add-float v20, v20, v21

    aput v20, p5, v24

    .line 408
    add-int/lit8 v20, v19, -0x1

    aget v20, p7, v20

    add-int/lit8 v21, v24, -0x1

    aget v21, p7, v21

    sub-float v20, v20, v21

    aput v20, p5, v19

    .line 402
    add-int/lit8 v9, v9, 0x1

    goto :goto_3aa

    .line 397
    :cond_3df
    add-int/lit8 v4, v4, 0x2

    move/from16 v22, v9

    move/from16 v9, v18

    goto :goto_398

    .line 392
    .end local v18  # "t1":I
    .end local v19  # "t6":I
    .end local v24  # "t5":I
    .local v9, "t1":I
    :cond_3e6
    move/from16 v18, v9

    .end local v9  # "t1":I
    .restart local v18  # "t1":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v23, v4

    move/from16 v4, v17

    goto :goto_38b

    .end local v11  # "t3":I
    .end local v17  # "t2":I
    .end local v18  # "t1":I
    .end local v25  # "t4":I
    .local v4, "t2":I
    .restart local v9  # "t1":I
    :cond_3ef
    move v11, v7

    move/from16 v7, v16

    goto/16 :goto_461

    .line 414
    .local v4, "t1":I
    .local v7, "t2":I
    .local v9, "j":I
    :cond_3f4
    const/4 v9, 0x1

    move/from16 v40, v9

    move v9, v4

    move v4, v7

    move/from16 v7, v40

    .local v4, "t2":I
    .local v7, "j":I
    .local v9, "t1":I
    :goto_3fb
    if-ge v7, v8, :cond_45e

    .line 415
    add-int/2addr v9, v13

    .line 416
    sub-int/2addr v4, v13

    .line 417
    move v11, v9

    .line 418
    .restart local v11  # "t3":I
    move/from16 v17, v4

    .line 419
    .local v17, "t4":I
    const/16 v18, 0x0

    move/from16 v25, v17

    move/from16 v4, v18

    .local v4, "k":I
    .local v17, "t2":I
    .restart local v25  # "t4":I
    :goto_408
    if-ge v4, v2, :cond_455

    .line 420
    move/from16 v18, v11

    .line 421
    .local v18, "t5":I
    move/from16 v19, v25

    .line 422
    .restart local v19  # "t6":I
    const/16 v20, 0x2

    move/from16 v24, v18

    move/from16 v18, v9

    move/from16 v9, v20

    .local v9, "i":I
    .local v18, "t1":I
    .restart local v24  # "t5":I
    :goto_416
    if-ge v9, v0, :cond_44b

    .line 423
    add-int/lit8 v24, v24, 0x2

    .line 424
    add-int/lit8 v19, v19, 0x2

    .line 425
    add-int/lit8 v20, v24, -0x1

    add-int/lit8 v21, v24, -0x1

    aget v21, p7, v21

    add-int/lit8 v22, v19, -0x1

    aget v22, p7, v22

    add-float v21, v21, v22

    aput v21, p5, v20

    .line 426
    add-int/lit8 v20, v19, -0x1

    aget v21, p7, v24

    aget v22, p7, v19

    sub-float v21, v21, v22

    aput v21, p5, v20

    .line 427
    aget v20, p7, v24

    aget v21, p7, v19

    add-float v20, v20, v21

    aput v20, p5, v24

    .line 428
    add-int/lit8 v20, v19, -0x1

    aget v20, p7, v20

    add-int/lit8 v21, v24, -0x1

    aget v21, p7, v21

    sub-float v20, v20, v21

    aput v20, p5, v19

    .line 422
    add-int/lit8 v9, v9, 0x2

    goto :goto_416

    .line 430
    :cond_44b
    add-int/2addr v11, v0

    .line 431
    add-int v25, v25, v0

    .line 419
    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v9

    move/from16 v9, v18

    goto :goto_408

    .line 414
    .end local v18  # "t1":I
    .end local v19  # "t6":I
    .end local v24  # "t5":I
    .local v9, "t1":I
    :cond_455
    move/from16 v18, v9

    .end local v9  # "t1":I
    .restart local v18  # "t1":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v22, v4

    move/from16 v4, v17

    goto :goto_3fb

    .end local v11  # "t3":I
    .end local v17  # "t2":I
    .end local v18  # "t1":I
    .end local v25  # "t4":I
    .local v4, "t2":I
    .restart local v9  # "t1":I
    :cond_45e
    move v11, v7

    move/from16 v7, v16

    .line 436
    .end local v16  # "ik":I
    .local v7, "ik":I
    .local v11, "j":I
    :goto_461
    const/4 v7, 0x0

    :goto_462
    if-ge v7, v3, :cond_46b

    .line 437
    aget v16, p8, v7

    aput v16, p6, v7

    .line 436
    add-int/lit8 v7, v7, 0x1

    goto :goto_462

    .line 439
    :cond_46b
    const/4 v9, 0x0

    .line 440
    mul-int v4, v10, v3

    .line 441
    const/4 v11, 0x1

    :goto_46f
    if-ge v11, v8, :cond_49f

    .line 442
    add-int/2addr v9, v13

    .line 443
    sub-int/2addr v4, v13

    .line 444
    sub-int v16, v9, v0

    .line 445
    .local v16, "t3":I
    sub-int v17, v4, v0

    .line 446
    .local v17, "t4":I
    const/16 v18, 0x0

    move/from16 v25, v17

    move/from16 v17, v4

    move/from16 v4, v18

    .local v4, "k":I
    .local v17, "t2":I
    .restart local v25  # "t4":I
    :goto_47f
    if-ge v4, v2, :cond_498

    .line 447
    add-int v16, v16, v0

    .line 448
    add-int v25, v25, v0

    .line 449
    aget v18, p7, v16

    aget v19, p7, v25

    add-float v18, v18, v19

    aput v18, p5, v16

    .line 450
    aget v18, p7, v25

    aget v19, p7, v16

    sub-float v18, v18, v19

    aput v18, p5, v25

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto :goto_47f

    .line 441
    :cond_498
    add-int/lit8 v11, v11, 0x1

    move/from16 v22, v4

    move/from16 v4, v17

    goto :goto_46f

    .line 454
    .end local v16  # "t3":I
    .end local v17  # "t2":I
    .end local v25  # "t4":I
    .local v4, "t2":I
    :cond_49f
    const/high16 v16, 0x3f800000  # 1.0f

    .line 455
    .local v16, "ar1":F
    const/16 v17, 0x0

    .line 456
    .local v17, "ai1":F
    const/4 v9, 0x0

    .line 457
    mul-int v4, v10, v3

    .line 458
    add-int/lit8 v18, v1, -0x1

    mul-int v18, v18, v3

    .line 459
    .local v18, "t3":I
    const/16 v19, 0x1

    move/from16 v1, v19

    .restart local v1  # "l":I
    :goto_4ae
    if-ge v1, v8, :cond_552

    .line 460
    add-int/2addr v9, v3

    .line 461
    sub-int/2addr v4, v3

    .line 462
    mul-float v19, v5, v16

    mul-float v20, v6, v17

    sub-float v19, v19, v20

    .line 463
    .local v19, "ar1h":F
    mul-float v20, v5, v17

    mul-float v21, v6, v16

    add-float v17, v20, v21

    .line 464
    move/from16 v16, v19

    .line 465
    move/from16 v20, v9

    .line 466
    .local v20, "t4":I
    move/from16 v21, v4

    .line 467
    .local v21, "t5":I
    move/from16 v24, v18

    .line 468
    .local v24, "t6":I
    move/from16 v25, p3

    .line 470
    .local v25, "t7":I
    const/4 v7, 0x0

    :goto_4c9
    if-ge v7, v3, :cond_4ee

    .line 471
    add-int/lit8 v26, v20, 0x1

    .end local v20  # "t4":I
    .local v26, "t4":I
    aget v27, p6, v7

    add-int/lit8 v30, v25, 0x1

    .end local v25  # "t7":I
    .local v30, "t7":I
    aget v25, p6, v25

    mul-float v25, v25, v16

    add-float v27, v27, v25

    aput v27, p8, v20

    .line 472
    add-int/lit8 v20, v21, 0x1

    .end local v21  # "t5":I
    .local v20, "t5":I
    add-int/lit8 v25, v24, 0x1

    .end local v24  # "t6":I
    .local v25, "t6":I
    aget v24, p6, v24

    mul-float v24, v24, v17

    aput v24, p8, v21

    .line 470
    add-int/lit8 v7, v7, 0x1

    move/from16 v21, v20

    move/from16 v24, v25

    move/from16 v20, v26

    move/from16 v25, v30

    goto :goto_4c9

    .line 475
    .end local v26  # "t4":I
    .end local v30  # "t7":I
    .local v20, "t4":I
    .restart local v21  # "t5":I
    .restart local v24  # "t6":I
    .local v25, "t7":I
    :cond_4ee
    move/from16 v26, v16

    .line 476
    .local v26, "dc2":F
    move/from16 v27, v17

    .line 477
    .local v27, "ds2":F
    move/from16 v30, v16

    .line 478
    .local v30, "ar2":F
    move/from16 v33, v17

    .line 480
    .local v33, "ai2":F
    move/from16 v20, p3

    .line 481
    add-int/lit8 v34, v10, -0x1

    mul-int v34, v34, v3

    .line 482
    .end local v21  # "t5":I
    .local v34, "t5":I
    const/4 v11, 0x2

    move/from16 v21, v25

    move/from16 v25, v20

    move/from16 v20, v24

    move/from16 v24, v34

    .end local v34  # "t5":I
    .local v20, "t6":I
    .local v21, "t7":I
    .local v24, "t5":I
    .local v25, "t4":I
    :goto_505
    if-ge v11, v8, :cond_54e

    .line 483
    add-int v25, v25, v3

    .line 484
    sub-int v24, v24, v3

    .line 486
    mul-float v34, v26, v30

    mul-float v35, v27, v33

    sub-float v34, v34, v35

    .line 487
    .local v34, "ar2h":F
    mul-float v35, v26, v33

    mul-float v36, v27, v30

    add-float v33, v35, v36

    .line 488
    move/from16 v30, v34

    .line 490
    move/from16 v20, v9

    .line 491
    move/from16 v21, v4

    .line 492
    move/from16 v35, v25

    .line 493
    .local v35, "t8":I
    move/from16 v36, v24

    .line 494
    .local v36, "t9":I
    const/4 v7, 0x0

    :goto_522
    if-ge v7, v3, :cond_54b

    .line 495
    add-int/lit8 v37, v20, 0x1

    .end local v20  # "t6":I
    .local v37, "t6":I
    aget v38, p8, v20

    add-int/lit8 v39, v35, 0x1

    .end local v35  # "t8":I
    .local v39, "t8":I
    aget v35, p6, v35

    mul-float v35, v35, v30

    add-float v38, v38, v35

    aput v38, p8, v20

    .line 496
    add-int/lit8 v20, v21, 0x1

    .end local v21  # "t7":I
    .local v20, "t7":I
    aget v35, p8, v21

    add-int/lit8 v38, v36, 0x1

    .end local v36  # "t9":I
    .local v38, "t9":I
    aget v36, p6, v36

    mul-float v36, v36, v33

    add-float v35, v35, v36

    aput v35, p8, v21

    .line 494
    add-int/lit8 v7, v7, 0x1

    move/from16 v21, v20

    move/from16 v20, v37

    move/from16 v36, v38

    move/from16 v35, v39

    goto :goto_522

    .line 482
    .end local v37  # "t6":I
    .end local v38  # "t9":I
    .end local v39  # "t8":I
    .local v20, "t6":I
    .restart local v21  # "t7":I
    .restart local v35  # "t8":I
    .restart local v36  # "t9":I
    :cond_54b
    add-int/lit8 v11, v11, 0x1

    goto :goto_505

    .line 459
    .end local v34  # "ar2h":F
    .end local v35  # "t8":I
    .end local v36  # "t9":I
    :cond_54e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4ae

    .line 500
    .end local v19  # "ar1h":F
    .end local v20  # "t6":I
    .end local v21  # "t7":I
    .end local v24  # "t5":I
    .end local v25  # "t4":I
    .end local v26  # "dc2":F
    .end local v27  # "ds2":F
    .end local v30  # "ar2":F
    .end local v33  # "ai2":F
    :cond_552
    const/4 v9, 0x0

    .line 501
    const/4 v11, 0x1

    :goto_554
    if-ge v11, v8, :cond_56d

    .line 502
    add-int/2addr v9, v3

    .line 503
    move v4, v9

    .line 504
    const/4 v7, 0x0

    :goto_559
    if-ge v7, v3, :cond_56a

    .line 505
    aget v19, p8, v7

    add-int/lit8 v20, v4, 0x1

    .end local v4  # "t2":I
    .local v20, "t2":I
    aget v4, p6, v4

    add-float v19, v19, v4

    aput v19, p8, v7

    .line 504
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v20

    goto :goto_559

    .line 501
    .end local v20  # "t2":I
    .restart local v4  # "t2":I
    :cond_56a
    add-int/lit8 v11, v11, 0x1

    goto :goto_554

    .line 508
    :cond_56d
    if-ge v0, v2, :cond_584

    .line 509
    const/16 v19, 0x84

    .line 510
    .end local v29  # "state":I
    .local v19, "state":I
    move/from16 v20, v1

    move/from16 v27, v16

    move/from16 v26, v17

    move/from16 v21, v18

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v16, v15

    move/from16 v15, v19

    move/from16 v19, v11

    goto :goto_5c9

    .line 513
    .end local v19  # "state":I
    .restart local v29  # "state":I
    :cond_584
    const/4 v9, 0x0

    .line 514
    const/4 v4, 0x0

    .line 515
    const/16 v19, 0x0

    move/from16 v40, v19

    move/from16 v19, v1

    move/from16 v1, v40

    .local v1, "k":I
    .local v19, "l":I
    :goto_58e
    if-ge v1, v2, :cond_5b4

    .line 516
    move/from16 v18, v9

    .line 517
    move/from16 v20, v4

    .line 518
    .local v20, "t4":I
    const/16 v21, 0x0

    move/from16 v25, v20

    move/from16 v2, v21

    .end local v20  # "t4":I
    .local v2, "i":I
    .restart local v25  # "t4":I
    :goto_59a
    if-ge v2, v0, :cond_5ab

    .line 519
    add-int/lit8 v20, v25, 0x1

    .end local v25  # "t4":I
    .restart local v20  # "t4":I
    add-int/lit8 v21, v18, 0x1

    .end local v18  # "t3":I
    .local v21, "t3":I
    aget v18, p7, v18

    aput v18, p4, v25

    .line 518
    add-int/lit8 v2, v2, 0x1

    move/from16 v25, v20

    move/from16 v18, v21

    goto :goto_59a

    .line 520
    .end local v20  # "t4":I
    .end local v21  # "t3":I
    .restart local v18  # "t3":I
    .restart local v25  # "t4":I
    :cond_5ab
    add-int/2addr v9, v0

    .line 521
    add-int/2addr v4, v14

    .line 515
    add-int/lit8 v1, v1, 0x1

    move/from16 v23, v2

    move/from16 v2, p2

    goto :goto_58e

    .line 523
    .end local v2  # "i":I
    .end local v25  # "t4":I
    :cond_5b4
    const/16 v2, 0x87

    .line 524
    .end local v29  # "state":I
    .local v2, "state":I
    move/from16 v22, v1

    move/from16 v27, v16

    move/from16 v26, v17

    move/from16 v21, v18

    move/from16 v20, v19

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v11

    move/from16 v16, v15

    move v15, v2

    .line 621
    .end local v1  # "k":I
    .end local v2  # "state":I
    .end local v7  # "ik":I
    .end local v9  # "t1":I
    .end local v11  # "j":I
    .end local v18  # "t3":I
    .end local v19  # "l":I
    .local v15, "state":I
    .local v16, "is":I
    .local v17, "ik":I
    .local v20, "l":I
    .local v26, "ai1":F
    .local v27, "ar1":F
    :goto_5c9
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, v28

    move/from16 v9, v31

    move/from16 v11, v32

    goto/16 :goto_46

    nop

    :sswitch_data_5d6
    .sparse-switch
        0x65 -> :sswitch_247
        0x77 -> :sswitch_22f
        0x84 -> :sswitch_f7
        0x87 -> :sswitch_e0
        0x8d -> :sswitch_61
    .end sparse-switch
.end method

.method static drftb1(I[F[F[FI[I)V
    .registers 31
    .param p0, "n"  # I
    .param p1, "c"  # [F
    .param p2, "ch"  # [F
    .param p3, "wa"  # [F
    .param p4, "index"  # I
    .param p5, "ifac"  # [I

    .line 1245
    move/from16 v0, p0

    const/4 v1, 0x0

    .line 1247
    .local v1, "l2":I
    const/4 v2, 0x0

    .local v2, "ip":I
    const/4 v3, 0x0

    .local v3, "ido":I
    const/4 v4, 0x0

    .line 1249
    .local v4, "idl1":I
    const/4 v5, 0x1

    aget v6, p5, v5

    .line 1250
    .local v6, "nf":I
    const/4 v7, 0x0

    .line 1251
    .local v7, "na":I
    const/4 v8, 0x1

    .line 1252
    .local v8, "l1":I
    const/4 v9, 0x1

    .line 1254
    .local v9, "iw":I
    const/4 v10, 0x0

    .local v10, "k1":I
    const/4 v11, 0x0

    move/from16 v19, v8

    move/from16 v20, v9

    move v15, v10

    move v8, v11

    .end local v8  # "l1":I
    .end local v9  # "iw":I
    .end local v10  # "k1":I
    .local v15, "k1":I
    .local v19, "l1":I
    .local v20, "iw":I
    :goto_14
    if-ge v15, v6, :cond_162

    .line 1255
    const/16 v9, 0x64

    move/from16 v21, v9

    .line 1257
    .local v21, "state":I
    :goto_1a
    sparse-switch v21, :sswitch_data_174

    move/from16 v24, v15

    .end local v15  # "k1":I
    .local v24, "k1":I
    move v9, v11

    .local v8, "ix2":I
    .local v9, "ix3":I
    goto/16 :goto_15e

    .end local v8  # "ix2":I
    .end local v9  # "ix3":I
    .end local v24  # "k1":I
    .restart local v15  # "k1":I
    :sswitch_22
    move v9, v11

    .restart local v9  # "ix3":I
    move/from16 v24, v15

    .restart local v8  # "ix2":I
    goto :goto_6e

    .end local v8  # "ix2":I
    .end local v9  # "ix3":I
    :sswitch_26
    move/from16 v22, v11

    .local v22, "ix3":I
    move/from16 v23, v8

    .line 1308
    .local v23, "ix2":I
    if-eqz v7, :cond_47

    .line 1309
    add-int v8, p4, v20

    add-int/lit8 v18, v8, -0x1

    move v8, v3

    move v9, v2

    move/from16 v10, v19

    move v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p2

    move-object/from16 v14, p2

    move/from16 v24, v15

    .end local v15  # "k1":I
    .restart local v24  # "k1":I
    move-object/from16 v15, p1

    move-object/from16 v16, p1

    move-object/from16 v17, p3

    invoke-static/range {v8 .. v18}, Lcom/jcraft/jorbis/Drft;->dradbg(IIII[F[F[F[F[F[FI)V

    goto :goto_61

    .line 1311
    .end local v24  # "k1":I
    .restart local v15  # "k1":I
    :cond_47
    move/from16 v24, v15

    .end local v15  # "k1":I
    .restart local v24  # "k1":I
    add-int v8, p4, v20

    add-int/lit8 v18, v8, -0x1

    move v8, v3

    move v9, v2

    move/from16 v10, v19

    move v11, v4

    move-object/from16 v12, p1

    move-object/from16 v13, p1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-static/range {v8 .. v18}, Lcom/jcraft/jorbis/Drft;->dradbg(IIII[F[F[F[F[F[FI)V

    .line 1312
    :goto_61
    if-ne v3, v5, :cond_6a

    .line 1313
    rsub-int/lit8 v7, v7, 0x1

    move/from16 v11, v22

    move/from16 v8, v23

    goto :goto_6e

    .line 1312
    :cond_6a
    move/from16 v11, v22

    move/from16 v8, v23

    .line 1316
    .end local v22  # "ix3":I
    .end local v23  # "ix2":I
    .restart local v8  # "ix2":I
    .local v11, "ix3":I
    :goto_6e
    move/from16 v19, v1

    .line 1317
    add-int/lit8 v9, v2, -0x1

    mul-int/2addr v9, v3

    add-int v20, v20, v9

    .line 1318
    nop

    .line 1254
    .end local v21  # "state":I
    add-int/lit8 v15, v24, 0x1

    .end local v24  # "k1":I
    .restart local v15  # "k1":I
    goto :goto_14

    .line 1257
    .end local v8  # "ix2":I
    .end local v11  # "ix3":I
    .restart local v21  # "state":I
    :sswitch_79
    move/from16 v24, v15

    .end local v15  # "k1":I
    .restart local v24  # "k1":I
    move/from16 v16, v11

    .line 1294
    .restart local v8  # "ix2":I
    .local v16, "ix3":I
    const/4 v9, 0x3

    if-eq v2, v9, :cond_88

    .line 1295
    const/16 v9, 0x6d

    .line 1296
    .end local v21  # "state":I
    .local v9, "state":I
    move/from16 v21, v9

    move/from16 v11, v16

    goto/16 :goto_15e

    .line 1299
    .end local v9  # "state":I
    .restart local v21  # "state":I
    :cond_88
    add-int v17, v20, v3

    .line 1300
    .end local v8  # "ix2":I
    .local v17, "ix2":I
    if-eqz v7, :cond_a3

    .line 1301
    add-int v8, p4, v20

    add-int/lit8 v13, v8, -0x1

    add-int v8, p4, v17

    add-int/lit8 v15, v8, -0x1

    move v8, v3

    move/from16 v9, v19

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p3

    invoke-static/range {v8 .. v15}, Lcom/jcraft/jorbis/Drft;->dradb3(II[F[F[FI[FI)V

    goto :goto_b9

    .line 1303
    :cond_a3
    add-int v8, p4, v20

    add-int/lit8 v13, v8, -0x1

    add-int v8, p4, v17

    add-int/lit8 v15, v8, -0x1

    move v8, v3

    move/from16 v9, v19

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p3

    invoke-static/range {v8 .. v15}, Lcom/jcraft/jorbis/Drft;->dradb3(II[F[F[FI[FI)V

    .line 1304
    :goto_b9
    rsub-int/lit8 v7, v7, 0x1

    .line 1305
    const/16 v8, 0x73

    .line 1306
    .end local v21  # "state":I
    .local v8, "state":I
    move/from16 v21, v8

    move/from16 v11, v16

    move/from16 v8, v17

    goto/16 :goto_15e

    .line 1257
    .end local v8  # "state":I
    .end local v16  # "ix3":I
    .end local v17  # "ix2":I
    .end local v24  # "k1":I
    .restart local v15  # "k1":I
    .restart local v21  # "state":I
    :sswitch_c5
    move/from16 v24, v15

    .end local v15  # "k1":I
    .restart local v24  # "k1":I
    move v14, v11

    .local v14, "ix3":I
    move v15, v8

    .line 1280
    .local v15, "ix2":I
    const/4 v8, 0x2

    if-eq v2, v8, :cond_d4

    .line 1281
    const/16 v8, 0x6a

    .line 1282
    .end local v21  # "state":I
    .restart local v8  # "state":I
    move/from16 v21, v8

    move v11, v14

    move v8, v15

    goto/16 :goto_15e

    .line 1285
    .end local v8  # "state":I
    .restart local v21  # "state":I
    :cond_d4
    if-eqz v7, :cond_e7

    .line 1286
    add-int v8, p4, v20

    add-int/lit8 v13, v8, -0x1

    move v8, v3

    move/from16 v9, v19

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    invoke-static/range {v8 .. v13}, Lcom/jcraft/jorbis/Drft;->dradb2(II[F[F[FI)V

    goto :goto_f7

    .line 1288
    :cond_e7
    add-int v8, p4, v20

    add-int/lit8 v13, v8, -0x1

    move v8, v3

    move/from16 v9, v19

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v8 .. v13}, Lcom/jcraft/jorbis/Drft;->dradb2(II[F[F[FI)V

    .line 1289
    :goto_f7
    rsub-int/lit8 v7, v7, 0x1

    .line 1290
    const/16 v8, 0x73

    .line 1291
    .end local v21  # "state":I
    .restart local v8  # "state":I
    move/from16 v21, v8

    move v11, v14

    move v8, v15

    goto :goto_15e

    .line 1259
    .end local v8  # "state":I
    .end local v14  # "ix3":I
    .end local v24  # "k1":I
    .local v15, "k1":I
    .restart local v21  # "state":I
    :sswitch_100
    move/from16 v24, v15

    .end local v15  # "k1":I
    .restart local v24  # "k1":I
    add-int/lit8 v15, v24, 0x2

    aget v2, p5, v15

    .line 1260
    mul-int v1, v2, v19

    .line 1261
    div-int v3, v0, v1

    .line 1262
    mul-int v4, v3, v19

    .line 1263
    const/4 v9, 0x4

    if-eq v2, v9, :cond_115

    .line 1264
    const/16 v9, 0x67

    .line 1265
    .end local v21  # "state":I
    .restart local v9  # "state":I
    move v10, v11

    .local v10, "ix3":I
    move/from16 v21, v9

    .local v8, "ix2":I
    goto :goto_15e

    .line 1267
    .end local v8  # "ix2":I
    .end local v9  # "state":I
    .end local v10  # "ix3":I
    .restart local v21  # "state":I
    :cond_115
    add-int v18, v20, v3

    .line 1268
    .local v18, "ix2":I
    add-int v22, v18, v3

    .line 1270
    .restart local v22  # "ix3":I
    if-eqz v7, :cond_138

    .line 1271
    add-int v8, p4, v20

    add-int/lit8 v13, v8, -0x1

    add-int v8, p4, v18

    add-int/lit8 v15, v8, -0x1

    add-int v8, p4, v22

    add-int/lit8 v17, v8, -0x1

    move v8, v3

    move/from16 v9, v19

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p3

    move-object/from16 v16, p3

    invoke-static/range {v8 .. v17}, Lcom/jcraft/jorbis/Drft;->dradb4(II[F[F[FI[FI[FI)V

    goto :goto_154

    .line 1274
    :cond_138
    add-int v8, p4, v20

    add-int/lit8 v13, v8, -0x1

    add-int v8, p4, v18

    add-int/lit8 v15, v8, -0x1

    add-int v8, p4, v22

    add-int/lit8 v17, v8, -0x1

    move v8, v3

    move/from16 v9, v19

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p3

    move-object/from16 v16, p3

    invoke-static/range {v8 .. v17}, Lcom/jcraft/jorbis/Drft;->dradb4(II[F[F[FI[FI[FI)V

    .line 1276
    :goto_154
    rsub-int/lit8 v7, v7, 0x1

    .line 1277
    const/16 v8, 0x73

    .line 1278
    .end local v21  # "state":I
    .local v8, "state":I
    move/from16 v21, v8

    move/from16 v8, v18

    move/from16 v11, v22

    .line 1318
    .end local v18  # "ix2":I
    .end local v22  # "ix3":I
    .local v8, "ix2":I
    .restart local v11  # "ix3":I
    .restart local v21  # "state":I
    :goto_15e
    move/from16 v15, v24

    goto/16 :goto_1a

    .line 1254
    .end local v8  # "ix2":I
    .end local v11  # "ix3":I
    .end local v21  # "state":I
    .end local v24  # "k1":I
    .restart local v15  # "k1":I
    :cond_162
    move/from16 v24, v15

    .end local v15  # "k1":I
    .restart local v24  # "k1":I
    move v5, v11

    .line 1322
    .local v5, "ix3":I
    .restart local v8  # "ix2":I
    if-nez v7, :cond_168

    .line 1323
    return-void

    .line 1324
    :cond_168
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_169
    if-ge v9, v0, :cond_172

    .line 1325
    aget v10, p2, v9

    aput v10, p1, v9

    .line 1324
    add-int/lit8 v9, v9, 0x1

    goto :goto_169

    .line 1326
    :cond_172
    return-void

    nop

    :sswitch_data_174
    .sparse-switch
        0x64 -> :sswitch_100
        0x67 -> :sswitch_c5
        0x6a -> :sswitch_79
        0x6d -> :sswitch_26
        0x73 -> :sswitch_22
    .end sparse-switch
.end method

.method static drftf1(I[F[F[F[I)V
    .registers 31
    .param p0, "n"  # I
    .param p1, "c"  # [F
    .param p2, "ch"  # [F
    .param p3, "wa"  # [F
    .param p4, "ifac"  # [I

    .line 631
    move/from16 v0, p0

    const/4 v1, 0x1

    aget v2, p4, v1

    .line 632
    .local v2, "nf":I
    const/4 v3, 0x1

    .line 633
    .local v3, "na":I
    move/from16 v4, p0

    .line 634
    .local v4, "l2":I
    move/from16 v5, p0

    .line 636
    .local v5, "iw":I
    const/4 v6, 0x0

    .local v6, "k1":I
    const/4 v7, 0x0

    move v8, v7

    :goto_d
    if-ge v6, v2, :cond_f4

    .line 637
    sub-int v9, v2, v6

    .line 638
    .local v9, "kh":I
    add-int/lit8 v10, v9, 0x1

    aget v10, p4, v10

    .line 639
    .local v10, "ip":I
    div-int v22, v4, v10

    .line 640
    .local v22, "l1":I
    div-int v15, v0, v4

    .line 641
    .local v15, "ido":I
    mul-int v23, v15, v22

    .line 642
    .local v23, "idl1":I
    add-int/lit8 v11, v10, -0x1

    mul-int/2addr v11, v15

    sub-int v24, v5, v11

    .line 643
    .end local v5  # "iw":I
    .local v24, "iw":I
    rsub-int/lit8 v3, v3, 0x1

    .line 645
    const/16 v5, 0x64

    .line 647
    .local v5, "state":I
    :goto_24
    packed-switch v5, :pswitch_data_102

    :pswitch_27  #0x65, 0x69, 0x6a, 0x6b, 0x6c
    move/from16 v25, v15

    .end local v15  # "ido":I
    .local v7, "ix2":I
    .local v8, "ix3":I
    .local v25, "ido":I
    goto/16 :goto_f0

    .end local v8  # "ix3":I
    .end local v25  # "ido":I
    .restart local v15  # "ido":I
    :pswitch_2b  #0x6e
    move/from16 v25, v15

    .restart local v8  # "ix3":I
    goto :goto_48

    .line 688
    :pswitch_2e  #0x6d
    add-int/lit8 v21, v24, -0x1

    move v11, v15

    move v12, v10

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v25, v15

    .end local v15  # "ido":I
    .restart local v25  # "ido":I
    move-object/from16 v15, p2

    move-object/from16 v16, p2

    move-object/from16 v17, p2

    move-object/from16 v18, p1

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    invoke-static/range {v11 .. v21}, Lcom/jcraft/jorbis/Drft;->dradfg(IIII[F[F[F[F[F[FI)V

    .line 689
    const/4 v3, 0x0

    .line 691
    :goto_48
    move/from16 v4, v22

    .line 692
    nop

    .line 636
    .end local v5  # "state":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v24

    goto :goto_d

    .line 647
    .end local v7  # "ix2":I
    .end local v8  # "ix3":I
    .end local v25  # "ido":I
    .restart local v5  # "state":I
    .restart local v15  # "ido":I
    :pswitch_50  #0x68
    move/from16 v25, v15

    .end local v15  # "ido":I
    .restart local v7  # "ix2":I
    .restart local v8  # "ix3":I
    .restart local v25  # "ido":I
    goto :goto_64

    .end local v7  # "ix2":I
    .end local v8  # "ix3":I
    .end local v25  # "ido":I
    .restart local v15  # "ido":I
    :pswitch_53  #0x67
    move/from16 v25, v15

    .line 675
    .end local v15  # "ido":I
    .restart local v7  # "ix2":I
    .restart local v8  # "ix3":I
    .restart local v25  # "ido":I
    add-int/lit8 v16, v24, -0x1

    move/from16 v11, v25

    move/from16 v12, v22

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    invoke-static/range {v11 .. v16}, Lcom/jcraft/jorbis/Drft;->dradf2(II[F[F[FI)V

    .line 677
    :goto_64
    move/from16 v15, v25

    .end local v25  # "ido":I
    .restart local v15  # "ido":I
    if-ne v15, v1, :cond_6a

    .line 678
    rsub-int/lit8 v3, v3, 0x1

    .line 679
    :cond_6a
    if-eqz v3, :cond_72

    .line 680
    const/16 v5, 0x6d

    .line 681
    move/from16 v25, v15

    goto/16 :goto_f0

    .line 683
    :cond_72
    add-int/lit8 v21, v24, -0x1

    move v11, v15

    move v12, v10

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v25, v15

    .end local v15  # "ido":I
    .restart local v25  # "ido":I
    move-object/from16 v15, p1

    move-object/from16 v16, p1

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    invoke-static/range {v11 .. v21}, Lcom/jcraft/jorbis/Drft;->dradfg(IIII[F[F[F[F[F[FI)V

    .line 684
    const/4 v3, 0x1

    .line 685
    const/16 v5, 0x6e

    .line 686
    goto/16 :goto_f0

    .line 647
    .end local v7  # "ix2":I
    .end local v8  # "ix3":I
    .end local v25  # "ido":I
    .restart local v15  # "ido":I
    :pswitch_90  #0x66
    move/from16 v25, v15

    .line 663
    .end local v15  # "ido":I
    .restart local v7  # "ix2":I
    .restart local v8  # "ix3":I
    .restart local v25  # "ido":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_98

    .line 664
    const/16 v5, 0x68

    .line 665
    goto :goto_f0

    .line 667
    :cond_98
    if-eqz v3, :cond_9d

    .line 668
    const/16 v5, 0x67

    .line 669
    goto :goto_f0

    .line 671
    :cond_9d
    add-int/lit8 v16, v24, -0x1

    move/from16 v11, v25

    move/from16 v12, v22

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-static/range {v11 .. v16}, Lcom/jcraft/jorbis/Drft;->dradf2(II[F[F[FI)V

    .line 672
    const/16 v5, 0x6e

    .line 673
    goto :goto_f0

    .line 649
    .end local v7  # "ix2":I
    .end local v8  # "ix3":I
    .end local v25  # "ido":I
    .restart local v15  # "ido":I
    :pswitch_af  #0x64
    move/from16 v25, v15

    .end local v15  # "ido":I
    .restart local v25  # "ido":I
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b8

    .line 650
    const/16 v5, 0x66

    .line 651
    nop

    .restart local v7  # "ix2":I
    .restart local v8  # "ix3":I
    goto :goto_f0

    .line 654
    .end local v7  # "ix2":I
    .end local v8  # "ix3":I
    :cond_b8
    add-int v7, v24, v25

    .line 655
    .restart local v7  # "ix2":I
    add-int v8, v7, v25

    .line 656
    .restart local v8  # "ix3":I
    if-eqz v3, :cond_d6

    .line 657
    add-int/lit8 v16, v24, -0x1

    add-int/lit8 v18, v7, -0x1

    add-int/lit8 v20, v8, -0x1

    move/from16 v11, v25

    move/from16 v12, v22

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v17, p3

    move-object/from16 v19, p3

    invoke-static/range {v11 .. v20}, Lcom/jcraft/jorbis/Drft;->dradf4(II[F[F[FI[FI[FI)V

    goto :goto_ed

    .line 659
    :cond_d6
    add-int/lit8 v16, v24, -0x1

    add-int/lit8 v18, v7, -0x1

    add-int/lit8 v20, v8, -0x1

    move/from16 v11, v25

    move/from16 v12, v22

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p3

    move-object/from16 v19, p3

    invoke-static/range {v11 .. v20}, Lcom/jcraft/jorbis/Drft;->dradf4(II[F[F[FI[FI[FI)V

    .line 660
    :goto_ed
    const/16 v5, 0x6e

    .line 661
    nop

    .line 692
    :goto_f0
    move/from16 v15, v25

    goto/16 :goto_24

    .line 696
    .end local v9  # "kh":I
    .end local v10  # "ip":I
    .end local v22  # "l1":I
    .end local v23  # "idl1":I
    .end local v24  # "iw":I
    .end local v25  # "ido":I
    .local v5, "iw":I
    :cond_f4
    if-ne v3, v1, :cond_f7

    .line 697
    return-void

    .line 698
    :cond_f7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f8
    if-ge v1, v0, :cond_101

    .line 699
    aget v9, p2, v1

    aput v9, p1, v1

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_f8

    .line 700
    :cond_101
    return-void

    :pswitch_data_102
    .packed-switch 0x64
        :pswitch_af  #00000064
        :pswitch_27  #00000065
        :pswitch_90  #00000066
        :pswitch_53  #00000067
        :pswitch_50  #00000068
        :pswitch_27  #00000069
        :pswitch_27  #0000006a
        :pswitch_27  #0000006b
        :pswitch_27  #0000006c
        :pswitch_2e  #0000006d
        :pswitch_2b  #0000006e
    .end packed-switch
.end method

.method static drfti1(I[FI[I)V
    .registers 30
    .param p0, "n"  # I
    .param p1, "wa"  # [F
    .param p2, "index"  # I
    .param p3, "ifac"  # [I

    .line 63
    move/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "ntry":I
    const/4 v2, -0x1

    .line 67
    .local v2, "j":I
    move/from16 v3, p0

    .line 68
    .local v3, "nl":I
    const/4 v4, 0x0

    .line 70
    .local v4, "nf":I
    const/16 v5, 0x65

    .local v5, "state":I
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 73
    :goto_c
    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_ee

    move/from16 v22, v5

    .end local v5  # "state":I
    .local v22, "state":I
    move v0, v7

    .local v0, "nq":I
    move v5, v8

    move/from16 v5, v22

    .local v5, "nr":I
    goto/16 :goto_ea

    .end local v0  # "nq":I
    .end local v22  # "state":I
    .local v5, "state":I
    .local v6, "i":I
    .local v7, "nq":I
    .local v8, "nr":I
    :sswitch_18
    goto :goto_56

    .line 75
    .end local v6  # "i":I
    .end local v7  # "nq":I
    .end local v8  # "nr":I
    :sswitch_19
    add-int/lit8 v2, v2, 0x1

    .line 76
    const/4 v7, 0x4

    if-ge v2, v7, :cond_23

    .line 77
    sget-object v7, Lcom/jcraft/jorbis/Drft;->ntryh:[I

    aget v1, v7, v2

    goto :goto_25

    .line 79
    :cond_23
    add-int/lit8 v1, v1, 0x2

    .line 81
    :goto_25
    :sswitch_25
    div-int v7, v3, v1

    .line 82
    .restart local v7  # "nq":I
    mul-int v8, v1, v7

    sub-int v8, v3, v8

    .line 83
    .restart local v8  # "nr":I
    if-eqz v8, :cond_31

    .line 84
    const/16 v5, 0x65

    .line 85
    goto/16 :goto_ea

    .line 87
    :cond_31
    add-int/lit8 v4, v4, 0x1

    .line 88
    add-int/lit8 v10, v4, 0x1

    aput v1, p3, v10

    .line 89
    move v3, v7

    .line 90
    const/4 v10, 0x2

    if-eq v1, v10, :cond_3f

    .line 91
    const/16 v5, 0x6b

    .line 92
    goto/16 :goto_ea

    .line 94
    :cond_3f
    if-ne v4, v9, :cond_45

    .line 95
    const/16 v5, 0x6b

    .line 96
    goto/16 :goto_ea

    .line 99
    :cond_45
    const/4 v6, 0x1

    .restart local v6  # "i":I
    :goto_46
    if-ge v6, v4, :cond_54

    .line 100
    sub-int v11, v4, v6

    add-int/2addr v11, v9

    .line 101
    .local v11, "ib":I
    add-int/lit8 v12, v11, 0x1

    aget v13, p3, v11

    aput v13, p3, v12

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 103
    .end local v11  # "ib":I
    :cond_54
    aput v10, p3, v10

    .line 105
    :goto_56
    if-eq v3, v9, :cond_5c

    .line 106
    const/16 v5, 0x68

    .line 107
    goto/16 :goto_ea

    .line 109
    :cond_5c
    const/4 v10, 0x0

    aput v0, p3, v10

    .line 110
    aput v4, p3, v9

    .line 111
    sget v9, Lcom/jcraft/jorbis/Drft;->tpi:F

    int-to-float v10, v0

    div-float/2addr v9, v10

    .line 112
    .local v9, "argh":F
    const/4 v10, 0x0

    .line 113
    .local v10, "is":I
    add-int/lit8 v11, v4, -0x1

    .line 114
    .local v11, "nfm1":I
    const/4 v12, 0x1

    .line 116
    .local v12, "l1":I
    if-nez v11, :cond_6c

    .line 117
    return-void

    .line 119
    :cond_6c
    const/4 v13, 0x0

    .local v13, "k1":I
    :goto_6d
    if-ge v13, v11, :cond_e9

    .line 120
    add-int/lit8 v14, v13, 0x2

    aget v14, p3, v14

    .line 121
    .local v14, "ip":I
    const/4 v15, 0x0

    .line 122
    .local v15, "ld":I
    mul-int v16, v12, v14

    .line 123
    .local v16, "l2":I
    move/from16 v17, v1

    .end local v1  # "ntry":I
    .local v17, "ntry":I
    div-int v1, v0, v16

    .line 124
    .local v1, "ido":I
    add-int/lit8 v0, v14, -0x1

    .line 126
    .local v0, "ipm":I
    const/4 v2, 0x0

    :goto_7d
    if-ge v2, v0, :cond_d4

    .line 127
    add-int/2addr v15, v12

    .line 128
    move v6, v10

    .line 129
    move/from16 v18, v0

    .end local v0  # "ipm":I
    .local v18, "ipm":I
    int-to-float v0, v15

    mul-float/2addr v0, v9

    .line 130
    .local v0, "argld":F
    const/16 v19, 0x0

    .line 131
    .local v19, "fi":F
    const/16 v20, 0x2

    move/from16 v25, v20

    move/from16 v20, v3

    move/from16 v3, v25

    .local v3, "ii":I
    .local v20, "nl":I
    :goto_8f
    if-ge v3, v1, :cond_c4

    .line 132
    const/high16 v21, 0x3f800000  # 1.0f

    add-float v19, v19, v21

    .line 133
    move/from16 v21, v4

    .end local v4  # "nf":I
    .local v21, "nf":I
    mul-float v4, v19, v0

    .line 134
    .local v4, "arg":F
    add-int/lit8 v22, v6, 0x1

    .end local v6  # "i":I
    .local v22, "i":I
    add-int v6, p2, v6

    move/from16 v23, v7

    move/from16 v24, v8

    .end local v7  # "nq":I
    .end local v8  # "nr":I
    .local v23, "nq":I
    .local v24, "nr":I
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, p1, v6

    .line 135
    add-int/lit8 v6, v22, 0x1

    .end local v22  # "i":I
    .restart local v6  # "i":I
    add-int v7, p2, v22

    move/from16 v22, v5

    move v8, v6

    .end local v5  # "state":I
    .end local v6  # "i":I
    .local v8, "i":I
    .local v22, "state":I
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v7

    .line 131
    add-int/lit8 v3, v3, 0x2

    move v6, v8

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v7, v23

    move/from16 v8, v24

    goto :goto_8f

    .line 137
    .end local v21  # "nf":I
    .end local v22  # "state":I
    .end local v23  # "nq":I
    .end local v24  # "nr":I
    .local v4, "nf":I
    .restart local v5  # "state":I
    .restart local v6  # "i":I
    .restart local v7  # "nq":I
    .local v8, "nr":I
    :cond_c4
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v7

    move/from16 v24, v8

    .end local v4  # "nf":I
    .end local v5  # "state":I
    .end local v7  # "nq":I
    .end local v8  # "nr":I
    .restart local v21  # "nf":I
    .restart local v22  # "state":I
    .restart local v23  # "nq":I
    .restart local v24  # "nr":I
    add-int/2addr v10, v1

    .line 126
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    move/from16 v3, v20

    goto :goto_7d

    .end local v18  # "ipm":I
    .end local v19  # "fi":F
    .end local v20  # "nl":I
    .end local v21  # "nf":I
    .end local v22  # "state":I
    .end local v23  # "nq":I
    .end local v24  # "nr":I
    .local v0, "ipm":I
    .local v3, "nl":I
    .restart local v4  # "nf":I
    .restart local v5  # "state":I
    .restart local v7  # "nq":I
    .restart local v8  # "nr":I
    :cond_d4
    move/from16 v18, v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v7

    move/from16 v24, v8

    .line 139
    .end local v0  # "ipm":I
    .end local v3  # "nl":I
    .end local v4  # "nf":I
    .end local v5  # "state":I
    .end local v6  # "i":I
    .end local v7  # "nq":I
    .end local v8  # "nr":I
    .restart local v18  # "ipm":I
    .restart local v20  # "nl":I
    .restart local v21  # "nf":I
    .restart local v22  # "state":I
    .restart local v23  # "nq":I
    .restart local v24  # "nr":I
    move/from16 v12, v16

    .line 119
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p0

    move/from16 v1, v17

    .end local v1  # "ido":I
    .end local v14  # "ip":I
    .end local v15  # "ld":I
    .end local v16  # "l2":I
    .end local v18  # "ipm":I
    .restart local v6  # "i":I
    goto :goto_6d

    .line 144
    .end local v6  # "i":I
    .end local v17  # "ntry":I
    .end local v20  # "nl":I
    .end local v21  # "nf":I
    .end local v22  # "state":I
    .end local v23  # "nq":I
    .end local v24  # "nr":I
    .local v1, "ntry":I
    .restart local v3  # "nl":I
    .restart local v4  # "nf":I
    .restart local v5  # "state":I
    .restart local v7  # "nq":I
    .restart local v8  # "nr":I
    :cond_e9
    return-void

    .line 141
    .end local v9  # "argh":F
    .end local v10  # "is":I
    .end local v11  # "nfm1":I
    .end local v12  # "l1":I
    .end local v13  # "k1":I
    :goto_ea
    move/from16 v0, p0

    goto/16 :goto_c

    :sswitch_data_ee
    .sparse-switch
        0x65 -> :sswitch_19
        0x68 -> :sswitch_25
        0x6b -> :sswitch_18
    .end sparse-switch
.end method

.method static fdrffti(I[F[I)V
    .registers 4
    .param p0, "n"  # I
    .param p1, "wsave"  # [F
    .param p2, "ifac"  # [I

    .line 147
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 148
    return-void

    .line 149
    :cond_4
    invoke-static {p0, p1, p0, p2}, Lcom/jcraft/jorbis/Drft;->drfti1(I[FI[I)V

    .line 150
    return-void
.end method


# virtual methods
.method backward([F)V
    .registers 10
    .param p1, "data"  # [F

    .line 35
    iget v0, p0, Lcom/jcraft/jorbis/Drft;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 36
    return-void

    .line 37
    :cond_6
    iget v2, p0, Lcom/jcraft/jorbis/Drft;->n:I

    iget-object v4, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    iget-object v5, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    iget v6, p0, Lcom/jcraft/jorbis/Drft;->n:I

    iget-object v7, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/jcraft/jorbis/Drft;->drftb1(I[F[F[FI[I)V

    .line 38
    return-void
.end method

.method clear()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 49
    iput-object v1, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    if-eqz v0, :cond_d

    .line 51
    iput-object v1, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    .line 52
    :cond_d
    return-void
.end method

.method init(I)V
    .registers 4
    .param p1, "n"  # I

    .line 41
    iput p1, p0, Lcom/jcraft/jorbis/Drft;->n:I

    .line 42
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    .line 43
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    .line 44
    iget-object v0, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    iget-object v1, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    invoke-static {p1, v0, v1}, Lcom/jcraft/jorbis/Drft;->fdrffti(I[F[I)V

    .line 45
    return-void
.end method
