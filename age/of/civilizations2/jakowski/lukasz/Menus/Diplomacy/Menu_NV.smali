.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_NV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;,
        Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;,
        Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;
    }
.end annotation


# static fields
.field public static PositionsY:[Ljava/lang/String;

.field public static goBack:Lage/of/civilizations2/jakowski/lukasz/View;


# instance fields
.field public GameEnd:Z

.field public SHIP_PADD:I

.field public aiShipsLength:[I

.field private asAlphabet:[Ljava/lang/String;

.field public boardHeight:I

.field private deployDOWN:I

.field private deployLEFT:I

.field private deployRIGHT:I

.field public deployShips:Z

.field private deployUP:I

.field private iDeployDirection:I

.field public iLastXPos:I

.field public iLastYPos:I

.field public iPlayerTurn:I

.field private iPositionInGame:I

.field public ingameW:I

.field public leftBoardX:I

.field public oAI:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;

.field public oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

.field public oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

.field public opponentID:I

.field public paddingY:I

.field public partW:I

.field public rightBoardX:I

.field public shipDeploy:Z

.field public shipsSt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 894
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->PositionsY:[Ljava/lang/String;

    .line 1233
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->goBack:Lage/of/civilizations2/jakowski/lukasz/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 34

    .line 36
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 34
    const/4 v10, 0x5

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    .line 637
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->ingameW:I

    .line 639
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    .line 640
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    .line 641
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    .line 642
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    .line 644
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    .line 648
    new-array v1, v10, [I

    fill-array-data v1, :array_49c

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    .line 649
    const-string v1, "5, 4, 3, 3, 2"

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->shipsSt:Ljava/lang/String;

    .line 651
    const/4 v11, 0x1

    iput-boolean v11, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployShips:Z

    .line 652
    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->shipDeploy:Z

    .line 654
    const/4 v1, -0x1

    iput v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    .line 655
    iput v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    .line 689
    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->GameEnd:Z

    .line 690
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iPlayerTurn:I

    .line 860
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iPositionInGame:I

    .line 875
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iDeployDirection:I

    .line 879
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployUP:I

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployRIGHT:I

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployDOWN:I

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployLEFT:I

    .line 893
    const/16 v1, 0x27

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_"

    aput-object v2, v1, v0

    const-string v2, "a"

    aput-object v2, v1, v11

    const-string v2, "b"

    const/4 v12, 0x2

    aput-object v2, v1, v12

    const-string v2, "c"

    const/4 v13, 0x3

    aput-object v2, v1, v13

    const-string v2, "d"

    const/4 v14, 0x4

    aput-object v2, v1, v14

    const-string v2, "e"

    aput-object v2, v1, v10

    const/4 v2, 0x6

    const-string v3, "f"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "g"

    aput-object v3, v1, v2

    const-string v2, "h"

    const/16 v15, 0x8

    aput-object v2, v1, v15

    const/16 v2, 0x9

    const-string v3, "i"

    aput-object v3, v1, v2

    const-string v2, "j"

    const/16 v16, 0xa

    aput-object v2, v1, v16

    const/16 v2, 0xb

    const-string v3, "k"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "l"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "m"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "n"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "r"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "s"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "t"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "v"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "w"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "x"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "y"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "z"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, " "

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "-"

    aput-object v3, v1, v2

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->asAlphabet:[Ljava/lang/String;

    .line 1328
    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->opponentID:I

    .line 1362
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;

    invoke-direct {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;)V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oAI:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$AI_BS;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 39
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int v5, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v6, v0, 0x2

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const-string v2, "Battleship, developed in 2012 by Lukasz Jakowski"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v18, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v10, v7

    move/from16 v7, v17

    move-object v11, v8

    .end local v8  # "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$2;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v4, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int v5, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v6, v0, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v8, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$3;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    const-string v3, "Mom, can we have the navy."

    invoke-direct {v0, v9, v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$4;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    add-int/2addr v2, v3

    const-string v3, "No, we have the navy at home."

    invoke-direct {v0, v9, v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$5;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const-string v3, "The navy at home:"

    invoke-direct {v0, v9, v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v0, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->opponentID:I

    .line 93
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->init()V

    .line 95
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3e800000  # 0.25f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    .line 97
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v0, v1

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    .line 99
    div-int/lit8 v0, v0, 0xa

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    .line 100
    mul-int/lit8 v0, v0, 0xa

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    .line 102
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/2addr v0, v14

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v1, v12

    sub-int/2addr v0, v1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    .line 103
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v14

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v1, v12

    sub-int/2addr v0, v1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    .line 105
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_1f5
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v0, v0

    if-ge v7, v0, :cond_245

    .line 106
    const/4 v0, 0x0

    move v8, v0

    .local v8, "j":I
    :goto_1fe
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v0, v0, v7

    array-length v0, v0

    if-ge v8, v0, :cond_242

    .line 107
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$6;

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v1, v5, v7

    add-int v2, v0, v1

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    mul-int v1, v5, v8

    add-int v3, v0, v1

    const/4 v6, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v4, v5

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;IIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 334
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setMax(I)V

    .line 106
    add-int/lit8 v8, v8, 0x1

    goto :goto_1fe

    .line 105
    .end local v8  # "j":I
    :cond_242
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f5

    .line 338
    .end local v7  # "i":I
    :cond_245
    const/4 v0, 0x0

    move v7, v0

    .restart local v7  # "i":I
    :goto_247
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v0, v0

    if-ge v7, v0, :cond_297

    .line 339
    const/4 v0, 0x0

    move v8, v0

    .restart local v8  # "j":I
    :goto_250
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v0, v0, v7

    array-length v0, v0

    if-ge v8, v0, :cond_294

    .line 340
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$7;

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v1, v5, v7

    add-int v2, v0, v1

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    mul-int v1, v5, v8

    add-int v3, v0, v1

    const/4 v6, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v4, v5

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;IIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 565
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setMax(I)V

    .line 339
    add-int/lit8 v8, v8, 0x1

    goto :goto_250

    .line 338
    .end local v8  # "j":I
    :cond_294
    add-int/lit8 v7, v7, 0x1

    goto :goto_247

    .line 570
    .end local v7  # "i":I
    :cond_297
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 572
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v8, v0

    .line 575
    .local v8, "tAW":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2ae
    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v1, v1

    const-string v2, ""

    if-ge v0, v1, :cond_333

    .line 576
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v4, v4, v0

    add-int v22, v3, v4

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int v23, v3, v4

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    move-object/from16 v19, v1

    move/from16 v24, v3

    invoke-direct/range {v19 .. v25}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x41

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    iget v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sub-int v29, v2, v8

    iget v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v4, v3, v0

    add-int/2addr v2, v4

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    div-int/2addr v3, v12

    sub-int v30, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v31, v8, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const/4 v3, 0x1

    add-int/lit8 v32, v2, 0x1

    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v32}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2ae

    .line 580
    .end local v0  # "i":I
    :cond_333
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_334
    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v1, v1

    if-ge v0, v1, :cond_3b7

    .line 581
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v4, v4, v0

    add-int v22, v3, v4

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int v23, v3, v4

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    move-object/from16 v19, v1

    move/from16 v24, v3

    invoke-direct/range {v19 .. v25}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x41

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    sub-int v29, v3, v8

    iget v3, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v5, v4, v0

    add-int/2addr v3, v5

    div-int/2addr v4, v12

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    div-int/2addr v4, v12

    sub-int v30, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int v31, v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const/4 v4, 0x1

    add-int/lit8 v32, v3, 0x1

    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v32}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_334

    .line 585
    .end local v0  # "i":I
    :cond_3b7
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Your Grid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    iget v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    add-int v5, v0, v1

    iget v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$9;

    iget v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    add-int v5, v0, v1

    iget v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const-string v2, "Place your ships here"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opponent\'s Grid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getOpponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    add-int v5, v0, v1

    iget v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    const/4 v14, -0x1

    iget v15, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v3, 0x5

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    add-int v16, v1, v2

    iget v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const-string v13, "Shoot here"

    move-object v12, v0

    move/from16 v17, v1

    invoke-direct/range {v12 .. v18}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    move-object/from16 v0, p0

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 633
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "All ships deployed, the battle is on!"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 634
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->ingameW:I

    .line 635
    return-void

    nop

    :array_49c
    .array-data 4
        0x5
        0x4
        0x3
        0x3
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;

    .line 32
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iDeployDirection:I

    return v0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;I)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;
    .param p1, "x1"  # I

    .line 32
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iDeployDirection:I

    return p1
.end method


# virtual methods
.method public AutoDeploy(I)V
    .registers 5
    .param p1, "nPlayerID"  # I

    .line 674
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    .line 675
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    .line 676
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setDeployDirection(I)V

    .line 678
    const/4 v0, 0x2

    if-ne p1, v0, :cond_42

    .line 679
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    array-length v2, v2

    if-ge v1, v2, :cond_42

    .line 680
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    invoke-virtual {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckDirection(III)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 681
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setShip(I)V

    .line 684
    :cond_3f
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->AutoDeploy(I)V

    .line 687
    :cond_42
    return-void
.end method

.method public CheckDirection(III)Z
    .registers 13
    .param p1, "nPlayerID"  # I
    .param p2, "nXPos"  # I
    .param p3, "nYPos"  # I

    .line 943
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setDirectionOnMap()I

    move-result v0

    .line 944
    .local v0, "iDirection":I
    const/4 v1, 0x0

    .local v1, "iX":I
    const/4 v2, 0x0

    .line 948
    .local v2, "iY":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_10

    .line 949
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v4

    .local v4, "iDeployedShips":I
    goto :goto_16

    .line 951
    .end local v4  # "iDeployedShips":I
    :cond_10
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v4

    .line 955
    .restart local v4  # "iDeployedShips":I
    :goto_16
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v5

    if-eq v5, v3, :cond_2e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_24

    goto :goto_2e

    .line 958
    :cond_24
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    aget v5, v5, v4

    sub-int/2addr v5, v3

    mul-int v5, v5, v0

    add-int v1, p2, v5

    goto :goto_37

    .line 956
    :cond_2e
    :goto_2e
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    aget v5, v5, v4

    sub-int/2addr v5, v3

    mul-int v5, v5, v0

    add-int v2, p3, v5

    .line 962
    :goto_37
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_73

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v5

    if-nez v5, :cond_45

    goto :goto_73

    .line 967
    :cond_45
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_46
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    aget v7, v7, v4

    if-ge v5, v7, :cond_72

    .line 968
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_65

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5b

    goto :goto_65

    .line 973
    :cond_5b
    mul-int v7, v5, v0

    add-int/2addr v7, p3

    invoke-virtual {p0, p1, p2, v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckPlace(III)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 974
    return v6

    .line 969
    :cond_65
    :goto_65
    mul-int v7, v5, v0

    add-int/2addr v7, p2

    invoke-virtual {p0, p1, v7, p3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckPlace(III)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 970
    return v6

    .line 967
    :cond_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 979
    .end local v5  # "i":I
    :cond_72
    return v3

    .line 963
    :cond_73
    :goto_73
    return v6
.end method

.method public CheckPlace(III)Z
    .registers 11
    .param p1, "nPlayerID"  # I
    .param p2, "nX"  # I
    .param p3, "nY"  # I

    .line 989
    const/4 v0, -0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4c

    .line 990
    const/4 v3, -0x1

    .local v3, "j":I
    :goto_6
    if-ge v3, v1, :cond_49

    .line 991
    add-int v4, p2, v0

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v4

    if-eqz v4, :cond_46

    add-int v4, p3, v3

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 992
    const/4 v4, 0x0

    if-ne p1, v2, :cond_35

    .line 993
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    add-int v6, p2, v0

    aget-object v5, v5, v6

    add-int v6, p3, v3

    aget-object v5, v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v5, v6, :cond_46

    .line 994
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "P1: No space for the selected position"

    invoke-virtual {v1, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 995
    return v4

    .line 998
    :cond_35
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    add-int v6, p2, v0

    aget-object v5, v5, v6

    add-int v6, p3, v3

    aget-object v5, v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v5, v6, :cond_46

    .line 1000
    return v4

    .line 990
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 989
    .end local v3  # "j":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1007
    .end local v0  # "i":I
    :cond_4c
    return v2
.end method

.method public CheckPositionToShoot(I)Z
    .registers 6
    .param p1, "nPlayerID"  # I

    .line 919
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 920
    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v2, v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-eq v2, v3, :cond_34

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v2, v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v2, v3, :cond_35

    .line 922
    :cond_34
    return v1

    .line 923
    :cond_35
    const/4 v2, 0x2

    if-ne p1, v2, :cond_59

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v2, v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-eq v2, v3, :cond_58

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v2, v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v2, v3, :cond_59

    .line 925
    :cond_58
    return v1

    .line 931
    :cond_59
    return v0

    .line 928
    :cond_5a
    return v1
.end method

.method public CheckShip(I)Z
    .registers 8
    .param p1, "nPlayerID"  # I

    .line 697
    const/4 v0, 0x2

    .line 699
    .local v0, "iLine":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_5f

    .line 700
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 701
    if-ne p1, v3, :cond_37

    .line 702
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v3, v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v3, v4, :cond_23

    .line 703
    return v2

    .line 704
    :cond_23
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v2, v3, :cond_5c

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 708
    :cond_37
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v3, v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v3, v4, :cond_49

    .line 709
    return v2

    .line 710
    :cond_49
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v2, v3, :cond_5c

    .line 711
    add-int/lit8 v0, v0, 0x1

    .line 699
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 717
    .end local v1  # "i":I
    :cond_5f
    const/4 v0, 0x2

    .line 719
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_61
    if-ge v1, v0, :cond_bc

    .line 720
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 721
    if-ne p1, v3, :cond_94

    .line 722
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_80

    .line 723
    return v2

    .line 724
    :cond_80
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_b9

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 728
    :cond_94
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_a6

    .line 729
    return v2

    .line 730
    :cond_a6
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_b9

    .line 731
    add-int/lit8 v0, v0, 0x1

    .line 719
    :cond_b9
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 737
    .end local v1  # "i":I
    :cond_bc
    const/4 v0, 0x2

    .line 739
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_be
    if-ge v1, v0, :cond_119

    .line 740
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 741
    if-ne p1, v3, :cond_f1

    .line 742
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_dd

    .line 743
    return v2

    .line 744
    :cond_dd
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_116

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_116

    .line 748
    :cond_f1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_103

    .line 749
    return v2

    .line 750
    :cond_103
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_116

    .line 751
    add-int/lit8 v0, v0, 0x1

    .line 739
    :cond_116
    :goto_116
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 757
    .end local v1  # "i":I
    :cond_119
    const/4 v0, 0x2

    .line 759
    const/4 v1, 0x1

    .restart local v1  # "i":I
    :goto_11b
    if-ge v1, v0, :cond_176

    .line 760
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 761
    if-ne p1, v3, :cond_14e

    .line 762
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_13a

    .line 763
    return v2

    .line 764
    :cond_13a
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_173

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_173

    .line 768
    :cond_14e
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_160

    .line 769
    return v2

    .line 770
    :cond_160
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v4, v5, :cond_173

    .line 771
    add-int/lit8 v0, v0, 0x1

    .line 759
    :cond_173
    :goto_173
    add-int/lit8 v1, v1, 0x1

    goto :goto_11b

    .line 777
    .end local v1  # "i":I
    :cond_176
    return v3
.end method

.method public CheckXPosition(I)Z
    .registers 3
    .param p1, "nX"  # I

    .line 1015
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1016
    const/4 v0, 0x1

    return v0

    .line 1018
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public CheckYPosition(I)Z
    .registers 3
    .param p1, "nY"  # I

    .line 1026
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getMapSize()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1027
    const/4 v0, 0x1

    return v0

    .line 1029
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public ResetDeployDirections()V
    .registers 2

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployUP:I

    .line 665
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployRIGHT:I

    .line 666
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployDOWN:I

    .line 667
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployLEFT:I

    .line 668
    return-void
.end method

.method public ShipDestroyed(I)V
    .registers 7
    .param p1, "nPlayerID"  # I

    .line 836
    const/4 v0, -0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_28

    .line 837
    const/4 v2, -0x1

    .local v2, "j":I
    :goto_5
    if-ge v2, v1, :cond_25

    .line 838
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 839
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v3, v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v4, v0

    invoke-virtual {p0, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setShot(III)V

    .line 837
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 836
    .end local v2  # "j":I
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 843
    .end local v0  # "i":I
    :cond_28
    return-void
.end method

.method public ShipUnderWater(I[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;)V
    .registers 6
    .param p1, "nPlayerID"  # I
    .param p2, "nMapShoots"  # [[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    .line 785
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setFirstPartOfTheShip([[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;)V

    .line 786
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x2

    if-ge v0, v1, :cond_59

    .line 787
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, p2, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v2, :cond_16

    .line 788
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->ShipDestroyed(I)V

    .line 791
    :cond_16
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 792
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, p2, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v2, :cond_36

    .line 793
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    .line 794
    add-int/lit8 v0, v0, -0x1

    .line 797
    :cond_36
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 798
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, 0x1

    aget-object v1, p2, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v2, :cond_56

    .line 799
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    .line 800
    add-int/lit8 v0, v0, -0x1

    .line 786
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 804
    .end local v0  # "i":I
    :cond_59
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 27
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const v8, 0x3eb33333  # 0.35f

    invoke-direct {v1, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1038
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1040
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e19999a  # 0.15f

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1041
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pattern:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1043
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->GameEnd:Z

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v1, :cond_243

    .line 1044
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1045
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pattern:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1047
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfLostShips()I

    move-result v1

    const v2, 0x3f59999a  # 0.85f

    if-gt v1, v11, :cond_c4

    .line 1048
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1049
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientVertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    div-int/2addr v3, v11

    sub-int/2addr v2, v3

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1051
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v3, v3, 0x3

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Victory! You have won the game!"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_111

    .line 1054
    :cond_c4
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1055
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientVertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    div-int/2addr v3, v11

    sub-int/2addr v2, v3

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1057
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v3, v3, 0x3

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEGATIVE_2:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Game over. You were defeated!"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1062
    :goto_111
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost ships: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfLostShips()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v4, v12

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x6

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1063
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total shots fired: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfShoots()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v4, v12

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x7

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1064
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successful hits: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfHits()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v4, v12

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x8

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1066
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost ships: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfLostShips()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v4, v12

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x6

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1067
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total shots fired: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfShoots()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v4, v12

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x7

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1068
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successful hits: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getNumOfHits()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    div-int/2addr v4, v12

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x8

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1071
    :cond_243
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v1, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1072
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    const/high16 v7, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1074
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3f088889

    invoke-direct {v1, v13, v13, v13, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1075
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1077
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1078
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1080
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1081
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1083
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f26a6a7

    const v13, 0x3f3fbfc0

    const v14, 0x3f5bdbdc

    invoke-direct {v1, v7, v13, v14, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1084
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    add-int v3, v2, p2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    add-int v4, v2, p3

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1086
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v7, v13, v14, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1087
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    add-int v3, v2, p2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    add-int v4, v2, p3

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1089
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1091
    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1093
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployShips:Z

    if-eqz v1, :cond_646

    .line 1094
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->shipDeploy:Z

    if-eqz v1, :cond_646

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    if-ltz v1, :cond_646

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    if-ltz v1, :cond_646

    .line 1095
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3ed0d0d1

    const v14, 0x3ef8f8f9

    const v15, 0x3f189899

    invoke-direct {v1, v13, v14, v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1096
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    add-int/2addr v1, v3

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x2

    sub-int v7, v4, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v16, v4, v3

    const/high16 v17, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move v5, v7

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1098
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0b8b8c

    const v6, 0x3f22a2a3

    const v5, 0x3f38b8b9

    invoke-direct {v1, v7, v6, v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1099
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    mul-int/lit8 v16, v3, 0x2

    add-int v1, v1, v16

    add-int v16, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    mul-int v5, v5, v4

    add-int/2addr v1, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p3

    mul-int/lit8 v1, v3, 0x4

    sub-int v18, v4, v1

    mul-int/lit8 v3, v3, 0x4

    sub-int v19, v4, v3

    const/high16 v20, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move/from16 v3, v16

    move v4, v5

    const v10, 0x3f38b8b9

    move/from16 v5, v18

    const v11, 0x3f22a2a3

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1101
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iDeployDirection:I

    if-lez v1, :cond_646

    .line 1102
    const/4 v2, 0x1

    if-ne v1, v2, :cond_47e

    .line 1103
    const/4 v1, 0x1

    move v7, v1

    .local v7, "i":I
    :goto_3eb
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v2

    aget v1, v1, v2

    if-ge v7, v1, :cond_47a

    .line 1104
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v14, v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1105
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    add-int/2addr v1, v3

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int/2addr v6, v7

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x2

    sub-int v18, v4, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v19, v4, v3

    const/high16 v20, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v18, v7

    .end local v7  # "i":I
    .local v18, "i":I
    move/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1107
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0b8b8c

    invoke-direct {v1, v7, v11, v10, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1108
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sub-int v6, v6, v18

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v1, v6

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x4

    sub-int v19, v4, v1

    const/4 v1, 0x4

    mul-int/lit8 v3, v3, 0x4

    sub-int v20, v4, v3

    const/high16 v21, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1103
    add-int/lit8 v7, v18, 0x1

    .end local v18  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_3eb

    :cond_47a
    move/from16 v18, v7

    .end local v7  # "i":I
    goto/16 :goto_646

    .line 1111
    :cond_47e
    if-ne v1, v12, :cond_515

    .line 1112
    const/4 v1, 0x1

    move v7, v1

    .restart local v7  # "i":I
    :goto_482
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v2

    aget v1, v1, v2

    if-ge v7, v1, :cond_511

    .line 1113
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v14, v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1114
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/2addr v3, v7

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    add-int/2addr v1, v3

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x2

    sub-int v18, v4, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v19, v4, v3

    const/high16 v20, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v18, v7

    .end local v7  # "i":I
    .restart local v18  # "i":I
    move/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1116
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0b8b8c

    invoke-direct {v1, v7, v11, v10, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1117
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int v3, v3, v18

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v1, v6

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x4

    sub-int v19, v4, v1

    const/4 v1, 0x4

    mul-int/lit8 v3, v3, 0x4

    sub-int v20, v4, v3

    const/high16 v21, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1112
    add-int/lit8 v7, v18, 0x1

    .end local v18  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_482

    :cond_511
    move/from16 v18, v7

    .end local v7  # "i":I
    goto/16 :goto_646

    .line 1120
    :cond_515
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5ad

    .line 1121
    const/4 v1, 0x1

    move v7, v1

    .restart local v7  # "i":I
    :goto_51a
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v2

    aget v1, v1, v2

    if-ge v7, v1, :cond_5a9

    .line 1122
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v14, v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1123
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    add-int/2addr v1, v3

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/2addr v6, v7

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x2

    sub-int v18, v4, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v19, v4, v3

    const/high16 v20, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v18, v7

    .end local v7  # "i":I
    .restart local v18  # "i":I
    move/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1125
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0b8b8c

    invoke-direct {v1, v7, v11, v10, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1126
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int v6, v6, v18

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v1, v6

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x4

    sub-int v19, v4, v1

    const/4 v1, 0x4

    mul-int/lit8 v3, v3, 0x4

    sub-int v20, v4, v3

    const/high16 v21, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1121
    add-int/lit8 v7, v18, 0x1

    .end local v18  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_51a

    :cond_5a9
    move/from16 v18, v7

    .end local v7  # "i":I
    goto/16 :goto_646

    .line 1129
    :cond_5ad
    const/4 v2, 0x4

    if-ne v1, v2, :cond_646

    .line 1130
    const/4 v1, 0x1

    move v7, v1

    .restart local v7  # "i":I
    :goto_5b2
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v2

    aget v1, v1, v2

    if-ge v7, v1, :cond_644

    .line 1131
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v14, v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1132
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int/2addr v3, v7

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    add-int/2addr v1, v3

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    add-int/2addr v1, v3

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x2

    sub-int v18, v4, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v19, v4, v3

    const/high16 v20, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v18, v7

    .end local v7  # "i":I
    .restart local v18  # "i":I
    move/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1134
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0b8b8c

    invoke-direct {v1, v7, v11, v10, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1135
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    sub-int v3, v3, v18

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->SHIP_PADD:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v1, v6

    add-int v6, v1, p3

    mul-int/lit8 v1, v3, 0x4

    sub-int v19, v4, v1

    const/4 v1, 0x4

    mul-int/lit8 v3, v3, 0x4

    sub-int v20, v4, v3

    const/high16 v21, 0x3f800000  # 1.0f

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move/from16 v5, v19

    move/from16 v6, v20

    const v19, 0x3f0b8b8c

    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1130
    add-int/lit8 v7, v18, 0x1

    .end local v18  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_5b2

    :cond_644
    move/from16 v18, v7

    .line 1143
    .end local v7  # "i":I
    :cond_646
    :goto_646
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x3e800000  # 0.25f

    invoke-direct {v1, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1144
    const/4 v1, 0x1

    move v10, v1

    .local v10, "i":I
    :goto_652
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v1, v1

    if-ge v10, v1, :cond_692

    .line 1145
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v10

    add-int/2addr v2, v3

    add-int v3, v2, p2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    add-int v4, v2, p3

    const/4 v5, 0x1

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1146
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    add-int v3, v2, p2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v4, v4, v10

    add-int/2addr v2, v4

    add-int v4, v2, p3

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1144
    add-int/lit8 v10, v10, 0x1

    goto :goto_652

    .line 1149
    .end local v10  # "i":I
    :cond_692
    const/4 v1, 0x1

    move v10, v1

    .restart local v10  # "i":I
    :goto_694
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v1, v1

    if-ge v10, v1, :cond_6d4

    .line 1150
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v3, v3, v10

    add-int/2addr v2, v3

    add-int v3, v2, p2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    add-int v4, v2, p3

    const/4 v5, 0x1

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1151
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->rightBoardX:I

    add-int v3, v2, p2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->partW:I

    mul-int v4, v4, v10

    add-int/2addr v2, v4

    add-int v4, v2, p3

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1149
    add-int/lit8 v10, v10, 0x1

    goto :goto_694

    .line 1154
    .end local v10  # "i":I
    :cond_6d4
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1177
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployShips:Z

    if-eqz v1, :cond_782

    .line 1178
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v1, 0x2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Left-click on your grid to start placing a ship"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1179
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v3, 0x3

    mul-int/lit8 v1, v1, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Right-click to change the ship\'s orientation."

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1180
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v3, 0x4

    mul-int/lit8 v1, v1, 0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v3, v3, 0x2

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Left-click on your grid to confirm deployment."

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1181
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const/4 v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Click opponent grid to cancel."

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1182
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const/4 v5, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Ships cannot be deployed next to each other. "

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1183
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->leftBoardX:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->boardHeight:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v3, v3, 0x5

    add-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "There must be at least one empty grid cell between them."

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7a2

    .line 1185
    :cond_782
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->GameEnd:Z

    if-nez v1, :cond_7a2

    .line 1186
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/2addr v1, v12

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->ingameW:I

    div-int/2addr v3, v12

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->paddingY:I

    div-int/2addr v1, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    div-int/2addr v3, v12

    sub-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "All ships deployed, the battle is on!"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1194
    :cond_7a2
    :goto_7a2
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v5, 0x4

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    const/4 v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    sub-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "FPS: over 9000"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1196
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ship lengths: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->shipsSt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1198
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FONT_BOLD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int v5, v1, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "Age of History 2: Definitive Edition"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1200
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1201
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1202
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1203
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1211
    if-eqz p4, :cond_5

    .line 1212
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1214
    :cond_5
    return-void
.end method

.method public endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 1218
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 1220
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1221
    return-void
.end method

.method public getDeployDirection()I
    .registers 2

    .line 882
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iDeployDirection:I

    return v0
.end method

.method public getMapSize()I
    .registers 2

    .line 660
    const/16 v0, 0xa

    return v0
.end method

.method public getOpponentName()Ljava/lang/String;
    .registers 3

    .line 1331
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->opponentID:I

    const-string v1, "Napoleon Bonaparte"

    packed-switch v0, :pswitch_data_1e

    .line 1351
    return-object v1

    .line 1347
    :pswitch_8  #0x7
    const-string v0, "Otto von Bismarck"

    return-object v0

    .line 1345
    :pswitch_b  #0x6
    const-string v0, "Douglas MacArthur"

    return-object v0

    .line 1343
    :pswitch_e  #0x5
    const-string v0, "Georgy Zhukov"

    return-object v0

    .line 1341
    :pswitch_11  #0x4
    const-string v0, "Genghis Khan"

    return-object v0

    .line 1339
    :pswitch_14  #0x3
    const-string v0, "Alexander the Great"

    return-object v0

    .line 1337
    :pswitch_17  #0x2
    const-string v0, "Julius Caesar"

    return-object v0

    .line 1335
    :pswitch_1a  #0x1
    return-object v1

    .line 1333
    :pswitch_1b  #0x0
    const-string v0, "Lukasz Jakowski"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method

.method public getPositionInGame()I
    .registers 2

    .line 863
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iPositionInGame:I

    return v0
.end method

.method public getPositionY()[Ljava/lang/String;
    .registers 2

    .line 890
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->PositionsY:[Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 5

    .line 1238
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    .line 1239
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    .line 1241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 1242
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_17
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 1243
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v2, v2, v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->WATER:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v3, v2, v1

    .line 1242
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1241
    .end local v1  # "j":I
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1247
    .end local v0  # "i":I
    :cond_30
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_31
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    array-length v1, v1

    if-ge v0, v1, :cond_52

    .line 1248
    const/4 v1, 0x0

    .restart local v1  # "j":I
    :goto_39
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_4f

    .line 1249
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v2, v2, v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->WATER:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v3, v2, v1

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1247
    .end local v1  # "j":I
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1255
    .end local v0  # "i":I
    :cond_52
    return-void
.end method

.method public final onBackPressed()V
    .registers 3

    .line 1227
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->goBack:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 1228
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 1229
    return-void
.end method

.method public setDeployDirection(I)V
    .registers 2
    .param p1, "nDir"  # I

    .line 886
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iDeployDirection:I

    .line 887
    return-void
.end method

.method public setDirectionOnMap()I
    .registers 4

    .line 936
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_f

    goto :goto_10

    .line 939
    :cond_f
    return v1

    .line 937
    :cond_10
    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public setFirstPartOfTheShip([[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;)V
    .registers 5
    .param p1, "nMapShoots"  # [[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    .line 811
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_47

    .line 812
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckXPosition(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 813
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    aget-object v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v2, :cond_24

    .line 814
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    .line 815
    add-int/lit8 v0, v0, -0x1

    .line 819
    :cond_24
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->CheckYPosition(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 820
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v1, p1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-ne v1, v2, :cond_44

    .line 821
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    .line 822
    add-int/lit8 v0, v0, -0x1

    .line 811
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    .end local v0  # "i":I
    :cond_47
    return-void
.end method

.method public setLastXPos(I)V
    .registers 2
    .param p1, "iLastXPos"  # I

    .line 1355
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    .line 1356
    return-void
.end method

.method public setLastYPos(I)V
    .registers 2
    .param p1, "iLastYPos"  # I

    .line 1359
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    .line 1360
    return-void
.end method

.method public setPositionInGame(I)V
    .registers 2
    .param p1, "nPositionInGame"  # I

    .line 867
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iPositionInGame:I

    .line 868
    return-void
.end method

.method public setShip(I)V
    .registers 9
    .param p1, "nPlayerID"  # I

    .line 897
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_58

    .line 898
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v5

    aget v4, v4, v5

    if-ge v3, v4, :cond_4d

    .line 899
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v4

    if-eq v4, v1, :cond_35

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v4

    if-ne v4, v0, :cond_1f

    goto :goto_35

    .line 902
    :cond_1f
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setDirectionOnMap()I

    move-result v6

    mul-int v6, v6, v3

    add-int/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v6, v4, v5

    goto :goto_4a

    .line 900
    :cond_35
    :goto_35
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setDirectionOnMap()I

    move-result v6

    mul-int v6, v6, v3

    add-int/2addr v5, v6

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v6, v4, v5

    .line 898
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 905
    .end local v3  # "i":I
    :cond_4d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->setDeployedShips(I)V

    goto :goto_ac

    .line 906
    :cond_58
    if-ne p1, v1, :cond_ac

    .line 907
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_5b
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->aiShipsLength:[I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v5

    aget v4, v4, v5

    if-ge v3, v4, :cond_a2

    .line 908
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v4

    if-eq v4, v1, :cond_8a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->getDeployDirection()I

    move-result v4

    if-ne v4, v0, :cond_74

    goto :goto_8a

    .line 911
    :cond_74
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setDirectionOnMap()I

    move-result v6

    mul-int v6, v6, v3

    add-int/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v6, v4, v5

    goto :goto_9f

    .line 909
    :cond_8a
    :goto_8a
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->Map:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastXPos:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->setDirectionOnMap()I

    move-result v6

    mul-int v6, v6, v3

    add-int/2addr v5, v6

    aget-object v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->iLastYPos:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v6, v4, v5

    .line 907
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 914
    .end local v3  # "i":I
    :cond_a2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->getDeployedShips()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->setDeployedShips(I)V

    .line 916
    :cond_ac
    :goto_ac
    return-void
.end method

.method public setShot(III)V
    .registers 6
    .param p1, "nPlayerID"  # I
    .param p2, "nX"  # I
    .param p3, "nY"  # I

    .line 846
    packed-switch p1, :pswitch_data_32

    goto :goto_31

    .line 853
    :pswitch_4  #0x2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-eq v0, v1, :cond_31

    .line 854
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP2:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v0, v0, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v1, v0, p3

    goto :goto_31

    .line 848
    :pswitch_1b  #0x1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHIP_DESTROYED:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    if-eq v0, v1, :cond_31

    .line 849
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->oP1:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$PlayerNV;->MapShoots:[[Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aget-object v0, v0, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;->SHOT:Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV$MapBS;

    aput-object v1, v0, p3

    .line 858
    :cond_31
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b  #00000001
        :pswitch_4  #00000002
    .end packed-switch
.end method

.method public startGame()V
    .registers 2

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Diplomacy/Menu_NV;->deployShips:Z

    .line 1207
    return-void
.end method
