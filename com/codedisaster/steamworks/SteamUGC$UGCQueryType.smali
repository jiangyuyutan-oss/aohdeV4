.class public final enum Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UGCQueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum AcceptedForGameRankedByAcceptanceDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum CreatedByFollowedUsersRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum CreatedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum FavoritedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum NotYetRated:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByAveragePlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByLifetimeAveragePlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByLifetimePlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByNumTimesReported:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByPlaytimeSessionsTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByPlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTextSearch:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTotalPlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTotalUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTotalVotesAsc:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByVote:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByVotesUp:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 55
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByVote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByVote:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 56
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByPublicationDate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 57
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "AcceptedForGameRankedByAcceptanceDate"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->AcceptedForGameRankedByAcceptanceDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 58
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByTrend"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 59
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "FavoritedByFriendsRankedByPublicationDate"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->FavoritedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 60
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "CreatedByFriendsRankedByPublicationDate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->CreatedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 61
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByNumTimesReported"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByNumTimesReported:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 62
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "CreatedByFollowedUsersRankedByPublicationDate"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->CreatedByFollowedUsersRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 63
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "NotYetRated"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->NotYetRated:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 64
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByTotalVotesAsc"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalVotesAsc:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 65
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByVotesUp"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByVotesUp:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 66
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByTextSearch"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTextSearch:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 67
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByTotalUniqueSubscriptions"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 68
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByPlaytimeTrend"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 69
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByTotalPlaytime"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalPlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 70
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByAveragePlaytimeTrend"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByAveragePlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 71
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByLifetimeAveragePlaytime"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByLifetimeAveragePlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 72
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByPlaytimeSessionsTrend"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPlaytimeSessionsTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 73
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    const-string v1, "RankedByLifetimePlaytimeSessions"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByLifetimePlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    .line 54
    sget-object v3, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByVote:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v5, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->AcceptedForGameRankedByAcceptanceDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v6, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v7, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->FavoritedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v8, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->CreatedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v9, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByNumTimesReported:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v10, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->CreatedByFollowedUsersRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v11, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->NotYetRated:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v12, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalVotesAsc:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v13, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByVotesUp:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v14, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTextSearch:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v15, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v16, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v17, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalPlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v18, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByAveragePlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v19, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByLifetimeAveragePlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v20, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPlaytimeSessionsTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    sget-object v21, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByLifetimePlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    filled-new-array/range {v3 .. v21}, [Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
    .registers 1

    .line 54
    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    return-object v0
.end method
