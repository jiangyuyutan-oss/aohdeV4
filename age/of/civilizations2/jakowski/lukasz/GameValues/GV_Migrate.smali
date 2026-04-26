.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Migrate;
.super Ljava/lang/Object;
.source "GV_Migrate.java"


# instance fields
.field public CAN_MIGRATE_EVERY_X_TURNS:I

.field public MIGRATE_RESEARCH_PROGRESS:F

.field public MIGRATE_RESEARCH_PROGRESS_NOT_CAPITAL:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Migrate;->CAN_MIGRATE_EVERY_X_TURNS:I

    .line 7
    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Migrate;->MIGRATE_RESEARCH_PROGRESS:F

    .line 8
    const v0, 0x3d4ccccd  # 0.05f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Migrate;->MIGRATE_RESEARCH_PROGRESS_NOT_CAPITAL:F

    return-void
.end method
