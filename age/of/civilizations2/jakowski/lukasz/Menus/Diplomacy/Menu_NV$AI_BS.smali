.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;
.super Ljava/lang/Object;
.source "Menu_NV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AI_BS"
.end annotation


# instance fields
.field private AIHard:Z

.field private AIXPositionToCheck:I

.field private AIYPositionToCheck:I

.field private iRandom:I

.field private iSinkDOWN:I

.field private iSinkLEFT:I

.field private iSinkRIGHT:I

.field private iSinkTOP:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    .line 1374
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIXPositionToCheck:I

    .line 1367
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIYPositionToCheck:I

    .line 1369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIHard:Z

    .line 1371
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->iRandom:I

    .line 1372
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->iSinkLEFT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->iSinkRIGHT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->iSinkTOP:I

    .line 1374
    return-void
.end method


# virtual methods
.method public AIRandom()V
    .registers 3

    .line 1386
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIHard:Z

    if-eqz v0, :cond_9

    .line 1387
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->SinkThisShip()V

    goto/16 :goto_7f

    .line 1388
    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_49

    .line 1389
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1390
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    goto :goto_7f

    .line 1391
    :cond_2d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 1392
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    goto :goto_7f

    .line 1394
    :cond_45
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIRandom()V

    goto :goto_7f

    .line 1398
    :cond_49
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_64

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_64

    .line 1399
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    goto :goto_7f

    .line 1400
    :cond_64
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 1401
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    goto :goto_7f

    .line 1403
    :cond_7c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIRandom()V

    .line 1406
    :goto_7f
    return-void
.end method

.method public CheckNextRandomAIShoot()Z
    .registers 5

    .line 1419
    const/4 v0, 0x0

    .line 1421
    .local v0, "iNum":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 1422
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v3, v2

    aget-object v1, v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v3, :cond_2b

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1426
    :cond_29
    add-int/lit8 v0, v0, 0x1

    .line 1429
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_4c

    .line 1430
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v3, :cond_4e

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1434
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    .line 1437
    :cond_4e
    :goto_4e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v1, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v3

    if-ge v1, v3, :cond_75

    .line 1438
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v3, v2

    aget-object v1, v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v3, :cond_77

    .line 1439
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 1442
    :cond_75
    add-int/lit8 v0, v0, 0x1

    .line 1445
    :cond_77
    :goto_77
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_98

    .line 1446
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v3, :cond_9a

    .line 1447
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 1450
    :cond_98
    add-int/lit8 v0, v0, 0x1

    .line 1453
    :cond_9a
    :goto_9a
    const/4 v1, 0x3

    if-le v0, v1, :cond_9f

    .line 1454
    const/4 v1, 0x0

    return v1

    .line 1456
    :cond_9f
    return v2
.end method

.method public ResetAI()V
    .registers 2

    .line 1614
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIYPositionToCheck:I

    .line 1615
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIXPositionToCheck:I

    .line 1616
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->iSinkLEFT:I

    .line 1617
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->iSinkRIGHT:I

    .line 1618
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIHard:Z

    .line 1619
    return-void
.end method

.method public SinkThisShip()V
    .registers 6

    .line 1472
    const/4 v0, 0x0

    .line 1474
    .local v0, "bFound":Z
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_90

    .line 1475
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_90

    .line 1476
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_5c

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v2

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_46

    goto :goto_5c

    .line 1484
    :cond_46
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_8f

    .line 1485
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    goto :goto_8f

    .line 1477
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    .line 1478
    :cond_64
    :goto_64
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_7c

    const/4 v1, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    if-ne v1, v2, :cond_8f

    .line 1479
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_64

    .line 1480
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    goto :goto_64

    .line 1488
    :cond_8f
    :goto_8f
    const/4 v0, 0x1

    .line 1492
    :cond_90
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_11f

    if-nez v0, :cond_11f

    .line 1493
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v2

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_11f

    .line 1494
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_eb

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_d5

    goto :goto_eb

    .line 1502
    :cond_d5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_11e

    .line 1503
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    goto :goto_11e

    .line 1495
    :cond_eb
    :goto_eb
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    .line 1496
    :cond_f3
    :goto_f3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_10b

    const/4 v1, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v1, 0x0

    :goto_10c
    if-ne v1, v2, :cond_11e

    .line 1497
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_f3

    .line 1498
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    goto :goto_f3

    .line 1506
    :cond_11e
    :goto_11e
    const/4 v0, 0x1

    .line 1510
    :cond_11f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1ae

    if-nez v0, :cond_1ae

    .line 1511
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_1ae

    .line 1512
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_17a

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v2

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_164

    goto :goto_17a

    .line 1520
    :cond_164
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_1ad

    .line 1521
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    goto :goto_1ad

    .line 1513
    :cond_17a
    :goto_17a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    .line 1514
    :cond_182
    :goto_182
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_19a

    const/4 v1, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v1, 0x0

    :goto_19b
    if-ne v1, v2, :cond_1ad

    .line 1515
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_182

    .line 1516
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    goto :goto_182

    .line 1524
    :cond_1ad
    :goto_1ad
    const/4 v0, 0x1

    .line 1528
    :cond_1ae
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v1, v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v4

    if-ge v1, v4, :cond_23c

    if-nez v0, :cond_23c

    .line 1529
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v2

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_23c

    .line 1530
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_209

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_1f3

    goto :goto_209

    .line 1538
    :cond_1f3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v1, v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v3

    if-ge v1, v3, :cond_23c

    .line 1539
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    goto :goto_23c

    .line 1531
    :cond_209
    :goto_209
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    .line 1532
    :cond_211
    :goto_211
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v4, :cond_229

    const/4 v1, 0x1

    goto :goto_22a

    :cond_229
    const/4 v1, 0x0

    :goto_22a
    if-ne v1, v2, :cond_23c

    .line 1533
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_211

    .line 1534
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    goto :goto_211

    .line 1544
    :cond_23c
    :goto_23c
    return-void
.end method

.method public setAINextShoot()V
    .registers 7

    .line 1552
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfLostShips()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_137

    .line 1554
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->setRandomShot()V

    .line 1556
    :goto_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->CheckNextRandomAIShoot()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1557
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->setRandomShot()V

    goto :goto_13

    .line 1560
    :cond_1d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIXPositionToCheck:I

    if-gez v0, :cond_25

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIYPositionToCheck:I

    if-ltz v1, :cond_34

    .line 1561
    :cond_25
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    .line 1562
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIYPositionToCheck:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    .line 1563
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIRandom()V

    .line 1566
    :cond_34
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckPositionToShoot(I)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1568
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfShoots()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->setNumOfShoots(I)V

    .line 1569
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v0, v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v0, v3, :cond_106

    .line 1570
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getPositionY()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->setPlayerLastMessage(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v4, v0, v3

    .line 1574
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v4, v0, v3

    .line 1578
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfHits()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->setNumOfHits(I)V

    .line 1579
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_NUKE:I

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1583
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckShip(I)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1585
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->ResetAI()V

    .line 1587
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfLostShips()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->setNumOfLostShips(I)V

    .line 1588
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->ShipUnderWater(I[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;)V

    goto :goto_102

    .line 1590
    :cond_f0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIYPositionToCheck:I

    if-ltz v0, :cond_f6

    .line 1591
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIHard:Z

    .line 1593
    :cond_f6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIXPositionToCheck:I

    .line 1594
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->AIYPositionToCheck:I

    .line 1596
    :goto_102
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->setAINextShoot()V

    goto :goto_13b

    .line 1600
    :cond_106
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v3, v0, v1

    .line 1601
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v3, v0, v1

    .line 1603
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iPlayerTurn:I

    goto :goto_13b

    .line 1606
    :cond_133
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->setAINextShoot()V

    goto :goto_13b

    .line 1609
    :cond_137
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->GameEnd:Z

    .line 1611
    :goto_13b
    return-void
.end method

.method public setRandomShot()V
    .registers 4

    .line 1547
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastXPos(I)V

    .line 1548
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setLastYPos(I)V

    .line 1549
    return-void
.end method
