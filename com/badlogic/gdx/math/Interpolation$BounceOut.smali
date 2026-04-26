.class public Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceOut"
.end annotation


# instance fields
.field final heights:[F

.field final widths:[F


# direct methods
.method public constructor <init>(I)V
    .registers 11
    .param p1, "bounces"  # I

    .line 321
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 322
    const/4 v0, 0x2

    if-lt p1, v0, :cond_b5

    const/4 v1, 0x5

    if-gt p1, v1, :cond_b5

    .line 323
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    .line 324
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    .line 325
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 326
    const v1, 0x3e19999a  # 0.15f

    const v2, 0x3ea8f5c3  # 0.33f

    const v4, 0x3dcccccd  # 0.1f

    const v5, 0x3e4ccccd  # 0.2f

    const v6, 0x3ecccccd  # 0.4f

    const/4 v7, 0x3

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_ce

    goto/16 :goto_ab

    .line 349
    :pswitch_2e  #0x5
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v6, 0x3e99999a  # 0.3f

    aput v6, v2, v3

    .line 350
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v6, v2, v8

    .line 351
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v5, v2, v0

    .line 352
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v4, v2, v7

    .line 353
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v5, 0x4

    aput v4, v2, v5

    .line 354
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v4, 0x3ee66666  # 0.45f

    aput v4, v2, v8

    .line 355
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aput v6, v2, v0

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aput v1, v0, v7

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3d75c28f  # 0.06f

    aput v1, v0, v5

    goto :goto_ab

    .line 340
    :pswitch_5d  #0x4
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v4, 0x3eae147b  # 0.34f

    aput v4, v2, v3

    .line 341
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v4, v2, v8

    .line 342
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v5, v2, v0

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v1, v2, v7

    .line 344
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v2, 0x3e851eb8  # 0.26f

    aput v2, v1, v8

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v2, 0x3de147ae  # 0.11f

    aput v2, v1, v0

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3cf5c28f  # 0.03f

    aput v1, v0, v7

    .line 347
    goto :goto_ab

    .line 333
    :pswitch_86  #0x3
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v6, v1, v3

    .line 334
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v6, v1, v8

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v5, v1, v0

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aput v2, v1, v8

    .line 337
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aput v4, v1, v0

    .line 338
    goto :goto_ab

    .line 328
    :pswitch_9b  #0x2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3f19999a  # 0.6f

    aput v1, v0, v3

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v6, v0, v8

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aput v2, v0, v8

    .line 331
    nop

    .line 360
    :goto_ab
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v1, v0, v3

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 361
    return-void

    .line 322
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounces cannot be < 2 or > 5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_ce
    .packed-switch 0x2
        :pswitch_9b  #00000002
        :pswitch_86  #00000003
        :pswitch_5d  #00000004
        :pswitch_2e  #00000005
    .end packed-switch
.end method

.method public constructor <init>([F[F)V
    .registers 5
    .param p1, "widths"  # [F
    .param p2, "heights"  # [F

    .line 314
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 315
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_c

    .line 317
    iput-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    .line 318
    iput-object p2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    .line 319
    return-void

    .line 316
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be the same number of widths and heights."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(F)F
    .registers 8
    .param p1, "a"  # F

    .line 364
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_7

    return v0

    .line 365
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 366
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v2, 0x0

    .line 367
    .local v2, "height":F
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    array-length v4, v4

    .local v4, "n":I
    :goto_16
    if-ge v3, v4, :cond_29

    .line 368
    iget-object v5, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v1, v5, v3

    .line 369
    cmpg-float v5, p1, v1

    if-gtz v5, :cond_25

    .line 370
    iget-object v5, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aget v2, v5, v3

    .line 371
    goto :goto_29

    .line 373
    :cond_25
    sub-float/2addr p1, v1

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 375
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_29
    :goto_29
    div-float/2addr p1, v1

    .line 376
    const/high16 v3, 0x40800000  # 4.0f

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    mul-float/2addr v3, p1

    .line 377
    .local v3, "z":F
    mul-float v4, v3, p1

    sub-float v4, v3, v4

    mul-float/2addr v4, v1

    sub-float/2addr v0, v4

    return v0
.end method
