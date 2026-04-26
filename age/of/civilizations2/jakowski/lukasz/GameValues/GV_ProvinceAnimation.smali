.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;
.super Ljava/lang/Object;
.source "GV_ProvinceAnimation.java"


# instance fields
.field public DIPLOMACY_ANIMATION_TIME:I

.field public ENABLE_DIPLOMACY_ANIMATION:Z

.field public PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

.field public PROVINCE_ANIMATION_VIEW_COLOR_INTERVAL:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x2d5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    .line 6
    const/16 v0, 0xfa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_VIEW_COLOR_INTERVAL:I

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->ENABLE_DIPLOMACY_ANIMATION:Z

    .line 9
    const/16 v0, 0xabe

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->DIPLOMACY_ANIMATION_TIME:I

    return-void
.end method
