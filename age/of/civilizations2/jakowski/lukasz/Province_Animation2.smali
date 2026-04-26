.class public Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;
.super Ljava/lang/Object;
.source "Province_Animation2.java"


# instance fields
.field public final START_PROVINCE_ALPHA:I

.field public final START_PROVINCE_BORDER_ALPHA:I

.field public final TIME_UPDATE:I

.field public backAnimation:Z

.field public backAnimationBorder:Z

.field public fAlpha:I

.field public iBorderAlpha:I

.field public iColorStepID:I

.field public iStepID:I

.field public iStepIDBorder:I

.field public lTime:J

.field public lTimeBorder:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->START_PROVINCE_ALPHA:I

    .line 12
    const/16 v1, 0xff

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->START_PROVINCE_BORDER_ALPHA:I

    .line 14
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->TIME_UPDATE:I

    .line 18
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    .line 19
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    .line 22
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    .line 26
    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTimeBorder:J

    .line 27
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepIDBorder:I

    .line 29
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    .line 30
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 2

    .line 80
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    return v0
.end method

.method public final getBackAnimation()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    return v0
.end method

.method public final getBorderAlpha()I
    .registers 2

    .line 84
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    return v0
.end method

.method public final getColorStepID()I
    .registers 2

    .line 96
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    return v0
.end method

.method public final getStepID()I
    .registers 2

    .line 92
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    return v0
.end method

.method public final resetAnimationData()V
    .registers 6

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    .line 65
    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    .line 67
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    .line 69
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTimeBorder:J

    .line 72
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepIDBorder:I

    .line 73
    const/16 v1, 0xff

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    .line 74
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    .line 75
    return-void
.end method

.method public final update()V
    .registers 7

    .line 35
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_64

    .line 36
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    .line 37
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    const/high16 v2, 0x40300000  # 2.75f

    if-eqz v0, :cond_2c

    .line 38
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    .line 39
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    .line 40
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    goto :goto_3e

    .line 42
    :cond_2c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    .line 43
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    .line 44
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    .line 47
    :goto_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    .line 49
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    const/16 v4, 0x14

    if-ne v0, v4, :cond_61

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    .line 51
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    .line 52
    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    xor-int/2addr v4, v1

    iput-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    .line 54
    if-eqz v0, :cond_5c

    const-wide/16 v4, 0x1c2

    goto :goto_5e

    :cond_5c
    const-wide/16 v4, 0x258

    :goto_5e
    add-long/2addr v2, v4

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    .line 57
    :cond_61
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 59
    :cond_64
    return-void
.end method
