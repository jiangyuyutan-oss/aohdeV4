.class public Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Logs;
.super Ljava/lang/Object;
.source "GV_Logs.java"


# instance fields
.field public SAVE_LOGS_TO_FILE:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Logs;->SAVE_LOGS_TO_FILE:Z

    return-void
.end method
