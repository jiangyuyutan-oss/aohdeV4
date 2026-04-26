.class public Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;
.super Ljava/lang/Object;
.source "ShipManager.java"


# static fields
.field public static limitOfShipsAtSea:I

.field public static shipImg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field public static shipLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;",
            ">;"
        }
    .end annotation
.end field

.field public static shipLinesSize:I

.field public static ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsAtSea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsAtSeaSize:I

.field public static shipsInPort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsInPortSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipImg:Ljava/util/List;

    .line 27
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->limitOfShipsAtSea:I

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    .line 30
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    .line 33
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addShipAtSea()V
    .registers 3

    .line 61
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    if-lez v0, :cond_45

    .line 62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 64
    .local v0, "tID":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->remove:Z

    .line 66
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    .line 70
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    .line 72
    .end local v0  # "tID":I
    :cond_45
    return-void
.end method

.method public static final addShipLine(Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;)V
    .registers 2
    .param p0, "nShipLine"  # Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    .line 301
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    .line 303
    return-void
.end method

.method public static final clearShips()V
    .registers 2

    .line 37
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    .line 40
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 41
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    .line 43
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 44
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    .line 46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 49
    goto :goto_1d

    .line 47
    :catch_1c
    move-exception v0

    .line 50
    :goto_1d
    return-void
.end method

.method public static final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 108
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SHIPS_ON_MAP:I

    if-lez v0, :cond_8e

    .line 109
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->update()V

    .line 111
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->SHIP_GROUP:I

    .line 113
    .local v0, "ageGroup":I
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 115
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_20
    if-ltz v1, :cond_8e

    .line 116
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->update()V

    .line 118
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->remove:Z

    if-eqz v2, :cond_74

    .line 119
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    .line 123
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    goto :goto_8b

    .line 126
    :cond_74
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    invoke-virtual {v2, p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8f

    .line 115
    :goto_8b
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 132
    .end local v0  # "ageGroup":I
    .end local v1  # "i":I
    :cond_8e
    goto :goto_93

    .line 130
    :catch_8f
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 133
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_93
    return-void
.end method

.method public static final drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 78
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SHIPS_ON_MAP:I

    if-lez v0, :cond_8e

    .line 79
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->update()V

    .line 82
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/GameAges;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameAges;->ages:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->SHIP_GROUP:I

    .line 84
    .local v0, "ageGroup":I
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 86
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_20
    if-ltz v1, :cond_8e

    .line 87
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->update()V

    .line 89
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->remove:Z

    if-eqz v2, :cond_74

    .line 90
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    .line 94
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    goto :goto_8b

    .line 97
    :cond_74
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    invoke-virtual {v2, p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8f

    .line 86
    :goto_8b
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 103
    .end local v0  # "ageGroup":I
    .end local v1  # "i":I
    :cond_8e
    goto :goto_93

    .line 101
    :catch_8f
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 104
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_93
    return-void
.end method

.method public static final loadShipLines()V
    .registers 12

    .line 139
    const-string v0, ";"

    const-string v1, "Lines_Sea.txt"

    const-string v2, "data/"

    const-string v3, "map/"

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 141
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5e} :catch_bf

    .line 146
    .local v3, "allLines":[Ljava/lang/String;
    :try_start_5e
    array-length v4, v3

    if-lez v4, :cond_b9

    .line 147
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_6c
    array-length v5, v3

    if-ge v4, v5, :cond_b9

    .line 148
    aget-object v5, v3, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "lineX":[Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "lineY":[Ljava/lang/String;
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    invoke-direct {v7}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;-><init>()V

    .line 153
    .local v7, "nShipLine":Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_83
    array-length v9, v5

    if-ge v8, v9, :cond_b0

    .line 154
    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v10

    mul-int v9, v9, v10

    aget-object v10, v6, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v11

    mul-int v10, v10, v11

    invoke-virtual {v7, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->addNewPoint_Just(II)V

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 157
    .end local v8  # "j":I
    :cond_b0
    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->buildData()V

    .line 159
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->addShipLine(Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_b6} :catch_ba

    .line 147
    .end local v5  # "lineX":[Ljava/lang/String;
    .end local v6  # "lineY":[Ljava/lang/String;
    .end local v7  # "nShipLine":Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;
    add-int/lit8 v4, v4, 0x2

    goto :goto_6c

    .line 164
    .end local v4  # "i":I
    :cond_b9
    goto :goto_be

    .line 162
    :catch_ba
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_bb
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf

    .line 168
    .end local v0  # "ex":Ljava/lang/Exception;
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "text":Ljava/lang/String;
    .end local v3  # "allLines":[Ljava/lang/String;
    :cond_be
    :goto_be
    goto :goto_c3

    .line 166
    :catch_bf
    move-exception v0

    .line 167
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 171
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_c3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c4
    :try_start_c4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_AGES:I

    if-ge v0, v1, :cond_115

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "tImages":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvShips:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Ships;->SHIP_IMAGES:I

    if-ge v2, v3, :cond_10c

    .line 175
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UI/ships/ship_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    .line 178
    .end local v2  # "i":I
    :cond_10c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_111} :catch_116

    .line 171
    nop

    .end local v1  # "tImages":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Image;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 182
    .end local v0  # "a":I
    :cond_115
    goto :goto_11a

    .line 180
    :catch_116
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 184
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_11a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11b
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    if-ge v0, v1, :cond_135

    .line 185
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->ships:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Ships/Ship2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    .line 189
    .end local v0  # "i":I
    :cond_135
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsInPortSize:I

    .line 191
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->updateLimitOfShipsAtSea()V

    .line 192
    return-void
.end method

.method public static final loadShipLines_Provinces()V
    .registers 7

    .line 195
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->getMapSc3()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 197
    .local v0, "paddingCheck":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    if-ge v1, v2, :cond_3da

    .line 198
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_12
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    if-ge v2, v3, :cond_3d6

    .line 199
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-gt v3, v4, :cond_d7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-lt v3, v4, :cond_d7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 200
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-gt v3, v4, :cond_d7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-lt v3, v4, :cond_d7

    .line 202
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    invoke-virtual {v3, v2, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 203
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->fromProvinceID:I

    .line 204
    goto/16 :goto_3d6

    .line 208
    :cond_d7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_196

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_196

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 209
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-gt v3, v4, :cond_196

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-lt v3, v4, :cond_196

    .line 211
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    add-int/2addr v4, v0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    invoke-virtual {v3, v2, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 212
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->fromProvinceID:I

    .line 213
    goto/16 :goto_3d6

    .line 217
    :cond_196
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_255

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_255

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 218
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-gt v3, v4, :cond_255

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-lt v3, v4, :cond_255

    .line 220
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sub-int/2addr v4, v0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    invoke-virtual {v3, v2, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_255

    .line 221
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->fromProvinceID:I

    .line 222
    goto/16 :goto_3d6

    .line 227
    :cond_255
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-gt v3, v4, :cond_314

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-lt v3, v4, :cond_314

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 228
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_314

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_314

    .line 230
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v3, v2, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_314

    .line 231
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->fromProvinceID:I

    .line 232
    goto/16 :goto_3d6

    .line 236
    :cond_314
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-gt v3, v4, :cond_3d2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-lt v3, v4, :cond_3d2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 237
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_3d2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_3d2

    .line 239
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_3d2

    .line 240
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->fromProvinceID:I

    .line 241
    goto :goto_3d6

    .line 198
    :cond_3d2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 197
    .end local v2  # "j":I
    :cond_3d6
    :goto_3d6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 247
    .end local v1  # "i":I
    :cond_3da
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_3db
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    if-ge v1, v2, :cond_90f

    .line 248
    const/4 v2, 0x0

    .restart local v2  # "j":I
    :goto_3e0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinSize()I

    move-result v3

    if-ge v2, v3, :cond_90b

    .line 249
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-gt v3, v4, :cond_4ec

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-lt v3, v4, :cond_4ec

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 250
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-gt v3, v4, :cond_4ec

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-lt v3, v4, :cond_4ec

    .line 252
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_4ec

    .line 253
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->toProvinceID:I

    .line 254
    goto/16 :goto_90b

    .line 258
    :cond_4ec
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5f3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_5f3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 259
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-gt v3, v4, :cond_5f3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-lt v3, v4, :cond_5f3

    .line 261
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    add-int/2addr v4, v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_5f3

    .line 262
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->toProvinceID:I

    .line 263
    goto/16 :goto_90b

    .line 267
    :cond_5f3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_6fa

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_6fa

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 268
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-gt v3, v4, :cond_6fa

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    if-lt v3, v4, :cond_6fa

    .line 270
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sub-int/2addr v4, v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_6fa

    .line 271
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->toProvinceID:I

    .line 272
    goto/16 :goto_90b

    .line 277
    :cond_6fa
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-gt v3, v4, :cond_801

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-lt v3, v4, :cond_801

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 278
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_801

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_801

    .line 280
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_801

    .line 281
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->toProvinceID:I

    .line 282
    goto/16 :goto_90b

    .line 286
    :cond_801
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiX2()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-gt v3, v4, :cond_907

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaX7()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    if-lt v3, v4, :cond_907

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 287
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMiY4()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_907

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaY6()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_907

    .line 289
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->points:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->ptCS(III)Z

    move-result v3

    if-eqz v3, :cond_907

    .line 290
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipLine;->toProvinceID:I

    .line 291
    goto :goto_90b

    .line 248
    :cond_907
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3e0

    .line 247
    .end local v2  # "j":I
    :cond_90b
    :goto_90b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3db

    .line 296
    .end local v1  # "i":I
    :cond_90f
    return-void
.end method

.method public static final update()V
    .registers 2

    .line 55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipsAtSeaSize:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->limitOfShipsAtSea:I

    if-ge v0, v1, :cond_9

    .line 56
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->addShipAtSea()V

    .line 58
    :cond_9
    return-void
.end method

.method public static final updateLimitOfShipsAtSea()V
    .registers 3

    .line 306
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SHIPS_ON_MAP:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->shipLinesSize:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Ships/ShipManager;->limitOfShipsAtSea:I

    .line 307
    return-void
.end method
