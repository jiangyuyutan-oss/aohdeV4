.class public final Lcom/codedisaster/steamworks/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.9.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 8
    const-string v0, "1.9.0"

    return-object v0
.end method
