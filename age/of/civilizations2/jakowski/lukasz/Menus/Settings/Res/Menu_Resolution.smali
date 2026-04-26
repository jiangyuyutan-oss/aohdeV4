.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_Resolution.java"


# instance fields
.field private lResolution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Point_XY2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 24
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 29
    .local v9, "tY":I
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v1, v10

    move v5, v9

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 32
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x1e00

    const/16 v4, 0x10e0

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x1400

    const/16 v4, 0xb40

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v4, 0x870

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x1000

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0xf00

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0xd70

    const/16 v4, 0x5a0

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0xa00

    const/16 v5, 0x800

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x780

    invoke-direct {v2, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v7, 0x640

    invoke-direct {v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v8, 0x438

    invoke-direct {v2, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x600

    invoke-direct {v2, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v10, 0x480

    invoke-direct {v2, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v5, 0x4b0

    invoke-direct {v2, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x740

    const/16 v8, 0x570

    invoke-direct {v2, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x700

    const/16 v8, 0x540

    invoke-direct {v2, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x690

    const/16 v8, 0x41a

    invoke-direct {v2, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v5, 0x384

    invoke-direct {v2, v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x360

    invoke-direct {v2, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x578

    invoke-direct {v2, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x556

    const/16 v4, 0x300

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x550

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x500

    const/16 v5, 0x400

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x3c0

    invoke-direct {v2, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v6, 0x320

    invoke-direct {v2, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v7, 0x2d0

    invoke-direct {v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    const/16 v3, 0x258

    invoke-direct {v2, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-direct {v2, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const/4 v1, 0x0

    move v11, v9

    .end local v9  # "tY":I
    .local v1, "i":I
    .local v11, "tY":I
    :goto_1e2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2cc

    .line 72
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    const-string v4, "x"

    const-string v5, ""

    if-ne v2, v3, :cond_26c

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v3

    if-ne v2, v3, :cond_26c

    .line 73
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v2, 0x42480000  # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, v12

    move v6, v11

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    goto :goto_2c8

    .line 77
    :cond_26c
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v2, 0x42480000  # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v9, 0x1

    move-object v2, v10

    move v6, v11

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    .line 71
    :goto_2c8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1e2

    .line 82
    .end local v1  # "i":I
    :cond_2cc
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v6, v1, v6

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 83
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->updateLang()V

    .line 84
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 95
    if-nez p1, :cond_8

    .line 96
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iWidth:I

    .line 97
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iHeight:I

    goto :goto_28

    .line 100
    :cond_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPX()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iWidth:I

    .line 101
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->lResolution:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY2;->getPY()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iHeight:I

    .line 104
    :goto_28
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->saveConfig()V

    .line 106
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eSETTINGS_GRAPHICS:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 107
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 109
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v1, 0x1194

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    .line 111
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Settings/Res/Menu_Resolution;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Max"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 89
    return-void
.end method
