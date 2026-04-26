.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;
.super Ljava/lang/Object;
.source "GV_Commands.java"


# instance fields
.field public CURRENCY_IMAGES_MIN_YEAR:I

.field public MINIMAP_FORCE_USE_DEFAULT:Z

.field public PLAY_CONSOLE_MUSIC:Z

.field public PROV_MORE_ALL_SHOW_BUILDINGS:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->PLAY_CONSOLE_MUSIC:Z

    .line 7
    const/16 v1, 0x7cf

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->CURRENCY_IMAGES_MIN_YEAR:I

    .line 9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->MINIMAP_FORCE_USE_DEFAULT:Z

    .line 11
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Commands;->PROV_MORE_ALL_SHOW_BUILDINGS:Z

    return-void
.end method
