.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;
.super Ljava/lang/Object;
.source "Menu_NV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerNV"
.end annotation


# instance fields
.field public Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

.field public MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

.field private iDeployedShips:I

.field private iNumOfHits:I

.field private iNumOfLostShips:I

.field private iNumOfShoots:I

.field private sPlayerLastMessage:Ljava/lang/String;

.field private sPlayerName:Ljava/lang/String;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;)V
    .registers 7
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    .line 1277
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    const-string v0, " "

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->sPlayerName:Ljava/lang/String;

    .line 1267
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->sPlayerLastMessage:Ljava/lang/String;

    .line 1269
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    .line 1270
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v3

    new-array v2, v2, [I

    aput v3, v2, v4

    aput v0, v2, v1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    .line 1272
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iDeployedShips:I

    .line 1273
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfLostShips:I

    .line 1274
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfShoots:I

    .line 1275
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfHits:I

    .line 1277
    return-void
.end method


# virtual methods
.method public getDeployedShips()I
    .registers 2

    .line 1288
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iDeployedShips:I

    return v0
.end method

.method public getNumOfHits()I
    .registers 2

    .line 1312
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfHits:I

    return v0
.end method

.method public getNumOfLostShips()I
    .registers 2

    .line 1296
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfLostShips:I

    return v0
.end method

.method public getNumOfShoots()I
    .registers 2

    .line 1304
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfShoots:I

    return v0
.end method

.method public getPlayerLastMessage()Ljava/lang/String;
    .registers 2

    .line 1320
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->sPlayerLastMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .registers 2

    .line 1280
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->sPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeployedShips(I)V
    .registers 2
    .param p1, "nDeployedShips"  # I

    .line 1292
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iDeployedShips:I

    .line 1293
    return-void
.end method

.method public setNumOfHits(I)V
    .registers 2
    .param p1, "nNumOfHits"  # I

    .line 1316
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfHits:I

    .line 1317
    return-void
.end method

.method public setNumOfLostShips(I)V
    .registers 2
    .param p1, "nNumOfLostShips"  # I

    .line 1300
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfLostShips:I

    .line 1301
    return-void
.end method

.method public setNumOfShoots(I)V
    .registers 2
    .param p1, "nNumOfShoots"  # I

    .line 1308
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->iNumOfShoots:I

    .line 1309
    return-void
.end method

.method public setPlayerLastMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "nMessage"  # Ljava/lang/String;

    .line 1324
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->sPlayerLastMessage:Ljava/lang/String;

    .line 1325
    return-void
.end method

.method public setPlayerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "nPlayerName"  # Ljava/lang/String;

    .line 1284
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->sPlayerName:Ljava/lang/String;

    .line 1285
    return-void
.end method
