.class public Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;
.super Ljava/lang/Object;
.source "SteamMatchmakingKeyValuePair.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->key:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->value:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->value:Ljava/lang/String;

    return-object v0
.end method
