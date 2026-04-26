.class Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_DiplomacyAction;
.source "Menu_InGame_Playlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;ILjava/lang/String;IIIIIZ)V
    .registers 21
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;
    .param p2, "nImageID"  # I
    .param p3, "sText"  # Ljava/lang/String;
    .param p4, "iTextPositionX"  # I
    .param p5, "iPosX"  # I
    .param p6, "iPosY"  # I
    .param p7, "iWidth"  # I
    .param p8, "iHeight"  # I
    .param p9, "isClickable"  # Z

    .line 229
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Action/Button_DiplomacyAction;-><init>(ILjava/lang/String;IIIIIZ)V

    .line 230
    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;->id:I

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 249
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getCurr()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadNextMusic_Default(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public getCurr()I
    .registers 2

    .line 234
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;->id:I

    return v0
.end method

.method public getWidthE()I
    .registers 2

    .line 244
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist;->getElementW()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public setMax(I)V
    .registers 2
    .param p1, "iMax"  # I

    .line 239
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/SFX/Menu_InGame_Playlist$9;->id:I

    .line 240
    return-void
.end method
