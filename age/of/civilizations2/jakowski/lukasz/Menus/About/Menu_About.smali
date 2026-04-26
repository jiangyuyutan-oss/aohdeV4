.class public Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_About.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;
    }
.end annotation


# instance fields
.field public flagsE:Z

.field public sF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 37
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->flagsE:Z

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v1, v1, 0x2

    .line 44
    .local v1, "tY":I
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$1;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const-string v4, "Age of History 2: Definitive Edition"

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 92
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$2;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const-string v5, "Age of History 2: Definitive Edition"

    const/4 v6, 0x0

    const v9, 0x3f666666  # 0.9f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 118
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 119
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$3;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const-string v5, "Programmer and Designer"

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 145
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$4;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gLI()Ljava/lang/String;

    move-result-object v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const v9, 0x3f666666  # 0.9f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 208
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 209
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$5;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const-string v5, "Publisher"

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 256
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$6;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->gLG()Ljava/lang/String;

    move-result-object v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const v9, 0x3f666666  # 0.9f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 303
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 304
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$7;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Music"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 324
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$8;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const-string v5, "Kevin Macleod"

    const v9, 0x3f666666  # 0.9f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 362
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 363
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$9;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v5, "Contact"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": jakowskidev@gmail.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 405
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 406
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$10;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const-string v5, "Special thanks to"

    const v9, 0x3f4ccccd  # 0.8f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 414
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$11;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const-string v5, "You!"

    const/high16 v9, 0x3f400000  # 0.75f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 444
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TITLE:Ljava/lang/String;

    if-eqz v2, :cond_38c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TITLE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38c

    .line 445
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 446
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$12;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v5, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TITLE:Ljava/lang/String;

    const/4 v6, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const v9, 0x3f4ccccd  # 0.8f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 454
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_1:Ljava/lang/String;

    if-eqz v2, :cond_2cc

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2cc

    .line 455
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$13;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v5, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_1:Ljava/lang/String;

    const/4 v6, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const/high16 v9, 0x3f400000  # 0.75f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 469
    :cond_2cc
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_2:Ljava/lang/String;

    if-eqz v2, :cond_30c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30c

    .line 470
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$14;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_2:Ljava/lang/String;

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const/high16 v8, 0x3f400000  # 0.75f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 484
    :cond_30c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_3:Ljava/lang/String;

    if-eqz v2, :cond_34c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_3:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_34c

    .line 485
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$15;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_3:Ljava/lang/String;

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const/high16 v8, 0x3f400000  # 0.75f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 499
    :cond_34c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_4:Ljava/lang/String;

    if-eqz v2, :cond_38c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_4:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38c

    .line 500
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$16;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT_4:Ljava/lang/String;

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const/high16 v8, 0x3f400000  # 0.75f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 515
    :cond_38c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TITLE2:Ljava/lang/String;

    if-eqz v2, :cond_4d4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TITLE2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d4

    .line 516
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 517
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$17;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v5, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TITLE2:Ljava/lang/String;

    const/4 v6, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const v9, 0x3f4ccccd  # 0.8f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 525
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_1:Ljava/lang/String;

    if-eqz v2, :cond_412

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_412

    .line 526
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$18;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v5, v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_1:Ljava/lang/String;

    const/4 v6, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    const/high16 v9, 0x3f400000  # 0.75f

    move-object v3, v2

    move-object v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 540
    :cond_412
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_2:Ljava/lang/String;

    if-eqz v2, :cond_452

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_452

    .line 541
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$19;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_2:Ljava/lang/String;

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const/high16 v8, 0x3f400000  # 0.75f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 555
    :cond_452
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_3:Ljava/lang/String;

    if-eqz v2, :cond_492

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_3:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_492

    .line 556
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$20;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_3:Ljava/lang/String;

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const/high16 v8, 0x3f400000  # 0.75f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 570
    :cond_492
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_4:Ljava/lang/String;

    if-eqz v2, :cond_4d4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_4:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d4

    .line 571
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$21;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvAbout:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_About;->TEXT2_4:Ljava/lang/String;

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    const/high16 v8, 0x3f400000  # 0.75f

    move-object v2, v9

    move-object v3, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;Ljava/lang/String;IIIF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v8, v1

    goto :goto_4d5

    .line 590
    :cond_4d4
    move v8, v1

    .end local v1  # "tY":I
    .local v8, "tY":I
    :goto_4d5
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$22;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v6, v1, v2

    const/4 v7, 0x1

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;IIIIZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    const/4 v2, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int v6, v1, v6

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 606
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->updateLang()V

    .line 607
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 3
    .param p1, "iID"  # I

    .line 751
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->actionElem(I)V

    .line 752
    return-void
.end method

.method public cSF()V
    .registers 9

    .line 706
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    add-int/lit8 v2, v2, -0x2c

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x2c

    const/16 v6, 0x1b

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 618
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3ee66666  # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 619
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    .line 620
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x4

    .line 619
    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 623
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3c4985f0  # 0.0123f

    const v2, 0x3e99999a  # 0.3f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 624
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patternSquareTiny:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patternSquareTiny:I

    .line 625
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    .line 626
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->getHeightM()I

    move-result v6

    .line 624
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 629
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 631
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawLogo_Square(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 654
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 655
    return-void
.end method

.method public drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 659
    if-eqz p4, :cond_5

    .line 660
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 662
    :cond_5
    return-void
.end method

.method public endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "sliderMenuIsActive"  # Z

    .line 666
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->endClipM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 669
    :try_start_3
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->flagsE:Z

    if-eqz v0, :cond_b0

    .line 670
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x15b

    if-ge v0, v1, :cond_16

    .line 671
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->cSF()V

    .line 674
    :cond_16
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 675
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3e000000  # 0.125f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 677
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_32
    if-ltz v0, :cond_b0

    .line 678
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    if-lez v2, :cond_a8

    .line 679
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->update(II)V

    .line 680
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->c:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlagC()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->x:I

    add-int v5, p2, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->y:I

    add-int v6, p3, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v7, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iW:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v8, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 682
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About$FSF;->iH:I

    if-gt v2, v1, :cond_ad

    .line 683
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ad

    .line 687
    :cond_a8
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ad} :catch_b1

    .line 677
    :cond_ad
    :goto_ad
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 695
    .end local v0  # "i":I
    :cond_b0
    goto :goto_ba

    .line 692
    :catch_b1
    move-exception v0

    .line 693
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 694
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 697
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_ba
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 698
    return-void
.end method

.method public final onBackPressed()V
    .registers 3

    .line 756
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuIDWithoutAnim(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 757
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 760
    :try_start_d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/About/Menu_About;->sF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    .line 763
    goto :goto_14

    .line 761
    :catch_13
    move-exception v0

    .line 764
    :goto_14
    return-void
.end method

.method public updateLang()V
    .registers 1

    .line 612
    return-void
.end method
