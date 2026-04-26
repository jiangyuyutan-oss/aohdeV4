.class public Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_MovementCost_Right_Free;
.super Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_MovementCost_Right;
.source "TextActionInfo_MovementCost_Right_Free.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iPosX"  # I
    .param p3, "iPosY"  # I

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_MovementCost_Right;-><init>(Ljava/lang/String;II)V

    .line 17
    return-void
.end method


# virtual methods
.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"  # Z

    .line 21
    if-eqz p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FREE_MOVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextActionInfo_MovementCost_Right_Free;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FREE_MOVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FREE_MOVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_10
    return-object v0
.end method
