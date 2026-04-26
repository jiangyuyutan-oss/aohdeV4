.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;
.super Ljava/lang/Object;
.source "GV_Outliner.java"


# instance fields
.field public SHOW_ARMY:Z

.field public SHOW_BATTLE_REPORTS:Z

.field public SHOW_ECONOMY:Z

.field public SHOW_ECONOMY_MOBILE:Z

.field public SHOW_HAPPINESS:Z

.field public SHOW_HAPPINESS_MOBILE:Z

.field public SHOW_POPULATION:Z

.field public SHOW_POPULATION_MOBILE:Z

.field public SHOW_STABILITY:Z

.field public SHOW_STABILITY_MOBILE:Z

.field public SHOW_STATS:Z

.field public SHOW_STATS_MOBILE:Z

.field public SHOW_WAR_WEARINESS:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STATS:Z

    .line 6
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STATS_MOBILE:Z

    .line 7
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_HAPPINESS:Z

    .line 8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_HAPPINESS_MOBILE:Z

    .line 9
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STABILITY:Z

    .line 10
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_STABILITY_MOBILE:Z

    .line 11
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_ARMY:Z

    .line 12
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_BATTLE_REPORTS:Z

    .line 13
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_WAR_WEARINESS:Z

    .line 14
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_POPULATION:Z

    .line 15
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_POPULATION_MOBILE:Z

    .line 16
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_ECONOMY:Z

    .line 17
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Outliner;->SHOW_ECONOMY_MOBILE:Z

    return-void
.end method
