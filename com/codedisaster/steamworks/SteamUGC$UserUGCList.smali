.class public final enum Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserUGCList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum Favorited:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum Followed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum Published:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum Subscribed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum UsedOrPlayed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum VotedDown:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum VotedOn:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum VotedUp:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

.field public static final enum WillVoteLater:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "Published"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Published:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "VotedOn"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->VotedOn:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 12
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "VotedUp"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->VotedUp:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 13
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "VotedDown"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->VotedDown:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 14
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "WillVoteLater"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->WillVoteLater:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 15
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "Favorited"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Favorited:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 16
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "Subscribed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Subscribed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 17
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "UsedOrPlayed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->UsedOrPlayed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 18
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    const-string v1, "Followed"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Followed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    .line 9
    sget-object v3, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Published:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->VotedOn:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->VotedUp:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->VotedDown:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->WillVoteLater:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Favorited:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Subscribed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v10, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->UsedOrPlayed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    sget-object v11, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->Followed:Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    filled-new-array/range {v3 .. v11}, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;
    .registers 1

    .line 9
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;

    return-object v0
.end method
