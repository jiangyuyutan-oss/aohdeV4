.class final enum Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;
.super Ljava/lang/Enum;
.source "SteamSharedLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PLATFORM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

.field public static final enum Linux:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

.field public static final enum MacOS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

.field public static final enum Windows:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    const-string v1, "Windows"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Windows:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    .line 10
    new-instance v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    const-string v1, "Linux"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Linux:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    .line 11
    new-instance v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    const-string v1, "MacOS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->MacOS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Windows:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    sget-object v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->Linux:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    sget-object v2, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->MacOS:Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->$VALUES:[Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;
    .registers 1

    .line 8
    sget-object v0, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->$VALUES:[Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamSharedLibraryLoader$PLATFORM;

    return-object v0
.end method
