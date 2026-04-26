.class public Lcom/codedisaster/steamworks/SteamControllerDigitalActionData;
.super Ljava/lang/Object;
.source "SteamControllerDigitalActionData.java"


# instance fields
.field active:Z

.field state:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamControllerDigitalActionData;->active:Z

    return v0
.end method

.method public getState()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamControllerDigitalActionData;->state:Z

    return v0
.end method
