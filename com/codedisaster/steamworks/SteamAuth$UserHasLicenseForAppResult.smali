.class public final enum Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;
.super Ljava/lang/Enum;
.source "SteamAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserHasLicenseForAppResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

.field public static final enum DoesNotHaveLicense:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

.field public static final enum HasLicense:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

.field public static final enum NoAuth:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

.field private static final values:[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    const-string v1, "HasLicense"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->HasLicense:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    .line 44
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    const-string v1, "DoesNotHaveLicense"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->DoesNotHaveLicense:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    .line 45
    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    const-string v1, "NoAuth"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->NoAuth:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    .line 42
    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->HasLicense:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    sget-object v1, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->DoesNotHaveLicense:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    sget-object v2, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->NoAuth:Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    .line 47
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->values()[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->values:[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;
    .registers 2
    .param p0, "result"  # I

    .line 50
    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->values:[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;
    .registers 1

    .line 42
    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamAuth$UserHasLicenseForAppResult;

    return-object v0
.end method
