.class Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits$1;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo;
.source "Menu_InGame_ActionInfo_NoUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits;
    .param p2, "sText"  # Ljava/lang/String;
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I

    .line 25
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 28
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT_ZERO_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Move/Menu_InGame_ActionInfo_NoUnits$1;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT_ZERO_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_MOVEMENT_ZERO:Lcom/badlogic/gdx/graphics/Color;

    :goto_10
    return-object v0
.end method
