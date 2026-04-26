.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;
.super Ljava/lang/Object;
.source "GV_ProvinceBorder.java"


# instance fields
.field public PROVINCE_BORDER_STOP_DRAWING:F

.field public PROVINCE_BORDER_STOP_DRAWING_MOBILE:F

.field public PROVINCE_BORDER_WIDTH_BASE:F

.field public PROVINCE_BORDER_WIDTH_ZOOM_IN_EXTRA_LIMIT:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/high16 v0, 0x40200000  # 2.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_WIDTH_BASE:F

    .line 6
    const/high16 v0, 0x40c00000  # 6.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_WIDTH_ZOOM_IN_EXTRA_LIMIT:F

    .line 8
    const v0, 0x3e19999a  # 0.15f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_STOP_DRAWING:F

    .line 9
    const v0, 0x3e666666  # 0.225f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceBorder;->PROVINCE_BORDER_STOP_DRAWING_MOBILE:F

    return-void
.end method
