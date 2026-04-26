.class Lage/of/civilizations2/jakowski/lukasz/Province$117;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/DrawArmyInProvince;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmyInProv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Province;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Province;

    .line 3158
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province$117;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawArmyProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 15
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"  # F

    .line 3161
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province$117;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyID(I)I

    move-result v0

    if-lez v0, :cond_1b

    .line 3162
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province$117;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->access$000(Lage/of/civilizations2/jakowski/lukasz/Province;)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProviArmyWithFlag_Tower_Armoury(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    goto :goto_2c

    .line 3165
    :cond_1b
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province$117;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->access$000(Lage/of/civilizations2/jakowski/lukasz/Province;)I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->drawProviArmy_Tower_NoArmy_Armoury(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 3167
    :goto_2c
    return-void
.end method
