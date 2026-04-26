.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;
.super Ljava/lang/Object;
.source "GV_Development.java"


# instance fields
.field public DEV_CHANGE_MODIFIER_LIMIT:F

.field public DEV_CHANGE_OCCUPIED_RANDOM:I

.field public DEV_CHANGE_OCCUPIED_RANDOM_DIVIDE:F

.field public DEV_CHANGE_PROVINCE_GROWTH_RATE_MODIFIER:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x3ee66666  # 0.45f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_PROVINCE_GROWTH_RATE_MODIFIER:F

    .line 6
    const v0, 0x3ebdb22d  # 0.3705f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_MODIFIER_LIMIT:F

    .line 8
    const/16 v0, 0x113

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_OCCUPIED_RANDOM:I

    .line 9
    const v0, 0x47c35000  # 100000.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Development;->DEV_CHANGE_OCCUPIED_RANDOM_DIVIDE:F

    return-void
.end method
