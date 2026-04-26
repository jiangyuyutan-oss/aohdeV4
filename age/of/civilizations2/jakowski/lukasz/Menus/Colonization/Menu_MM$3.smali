.class Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Build/Button_BuildAll;
.source "Menu_MM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "nImageID"  # I
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "iWidth"  # I

    .line 226
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button/Build/Button_BuildAll;-><init>(Ljava/lang/String;IIII)V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;->id:I

    return-void
.end method


# virtual methods
.method public getColorE(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 4
    .param p1, "isActive"  # Z

    .line 229
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;->id:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->questionID:I

    if-ne v0, v1, :cond_9

    .line 230
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_HOVER_TITLE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 233
    :cond_9
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/Build/Button_BuildAll;->getColorE(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public setMax(I)V
    .registers 2
    .param p1, "iMax"  # I

    .line 240
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$3;->id:I

    .line 241
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button/Build/Button_BuildAll;->setMax(I)V

    .line 242
    return-void
.end method
