.class Lage/of/civilizations2/jakowski/lukasz/Core/Core$29;
.super Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Core/Core;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 6
    .param p1, "nCivID"  # I
    .param p2, "iFromProvinceID"  # I
    .param p3, "iToProvinceID"  # I
    .param p4, "nColor"  # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "nColor2"  # Lcom/badlogic/gdx/graphics/Color;

    .line 17136
    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnitsB/MoveUnits_DiplomacyLines;-><init>(IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public canBeUsedInPath(IIZI)Z
    .registers 6
    .param p1, "nCivID"  # I
    .param p2, "nProvinceID"  # I
    .param p3, "moveToFriendlyProvince"  # Z
    .param p4, "toProvinceID"  # I

    .line 17144
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandLvl()I

    move-result v0

    if-ltz v0, :cond_e

    .line 17145
    const/4 v0, 0x0

    return v0

    .line 17148
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public isFriendlyProvince(II)Z
    .registers 4
    .param p1, "nCivID"  # I
    .param p2, "toProvinceID"  # I

    .line 17139
    const/4 v0, 0x1

    return v0
.end method
