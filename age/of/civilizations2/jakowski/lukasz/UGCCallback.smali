.class public Lage/of/civilizations2/jakowski/lukasz/UGCCallback;
.super Ljava/lang/Object;
.source "UGCCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 1

    .line 15
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/UGCCallback$1;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/UGCCallback$1;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUC:Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 100
    return-void
.end method
