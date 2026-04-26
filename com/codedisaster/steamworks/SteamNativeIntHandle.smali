.class public abstract Lcom/codedisaster/steamworks/SteamNativeIntHandle;
.super Ljava/lang/Object;
.source "SteamNativeIntHandle.java"


# instance fields
.field handle:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "handle"  # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    .line 9
    return-void
.end method

.method public static getNativeHandle(Lcom/codedisaster/steamworks/SteamNativeIntHandle;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/codedisaster/steamworks/SteamNativeIntHandle;",
            ">(TT;)I"
        }
    .end annotation

    .line 15
    .local p0, "handle":Lcom/codedisaster/steamworks/SteamNativeIntHandle;, "TT;"
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"  # Ljava/lang/Object;

    .line 25
    instance-of v0, p1, Lcom/codedisaster/steamworks/SteamNativeIntHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 26
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    move-object v2, p1

    check-cast v2, Lcom/codedisaster/steamworks/SteamNativeIntHandle;

    iget v2, v2, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 28
    :cond_10
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 33
    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
