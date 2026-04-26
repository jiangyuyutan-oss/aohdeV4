.class public final enum Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserUGCListSortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum CreationOrderAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum CreationOrderDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum ForModeration:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum LastUpdatedDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum SubscriptionDateDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum TitleAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum VoteScoreDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 45
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "CreationOrderDesc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->CreationOrderDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 46
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "CreationOrderAsc"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->CreationOrderAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 47
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "TitleAsc"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->TitleAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 48
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "LastUpdatedDesc"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->LastUpdatedDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 49
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "SubscriptionDateDesc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->SubscriptionDateDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 50
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "VoteScoreDesc"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->VoteScoreDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 51
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v1, "ForModeration"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->ForModeration:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    .line 44
    sget-object v3, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->CreationOrderDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->CreationOrderAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->TitleAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->LastUpdatedDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->SubscriptionDateDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->VoteScoreDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->ForModeration:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    filled-new-array/range {v3 .. v9}, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
    .registers 1

    .line 44
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    return-object v0
.end method
