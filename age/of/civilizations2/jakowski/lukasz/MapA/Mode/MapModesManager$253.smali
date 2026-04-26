.class Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$253;
.super Ljava/lang/Object;
.source "MapModesManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/RenderProvince$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->initFans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    .line 12682
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager$253;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 12685
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;->CLICKED:Z

    const v1, 0x3ecccccd  # 0.4f

    if-eqz v0, :cond_52

    .line 12686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_50

    .line 12687
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCeY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menus/Uncolonized/Menu_InGame_View_F;->MAX_Y:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2d

    .line 12688
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v2, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3e

    .line 12691
    :cond_2d
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f5cdcdd

    const v4, 0x3da0a0a1

    const v5, 0x3e70f0f1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12694
    :goto_3e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 12686
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0  # "i":I
    :cond_50
    goto/16 :goto_108

    .line 12698
    :cond_52
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_53
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_108

    .line 12699
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    const v3, 0x3f4dcdce

    const/high16 v4, 0x3e800000  # 0.25f

    packed-switch v2, :pswitch_data_10a

    goto/16 :goto_f5

    .line 12728
    :pswitch_69  #0x9
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v1, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_f5

    .line 12725
    :pswitch_73  #0x8
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4fcfd0

    const v5, 0x3ed2d2d3

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12726
    goto/16 :goto_f5

    .line 12722
    :pswitch_83  #0x7
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f49c9ca

    const v5, 0x3ec6c6c7

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12723
    goto :goto_f5

    .line 12719
    :pswitch_92  #0x6
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4bcbcc

    const v5, 0x3ecececf

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12720
    goto :goto_f5

    .line 12716
    :pswitch_a1  #0x5
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3ecacacb

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12717
    goto :goto_f5

    .line 12713
    :pswitch_ad  #0x4
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f50d0d1

    const v5, 0x3ed4d4d5

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12714
    goto :goto_f5

    .line 12710
    :pswitch_bc  #0x3
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4acacb

    const v5, 0x3ec4c4c5

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12711
    goto :goto_f5

    .line 12707
    :pswitch_cb  #0x2
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4ececf

    const v5, 0x3ed0d0d1

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12708
    goto :goto_f5

    .line 12704
    :pswitch_da  #0x1
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f48c8c9

    const v5, 0x3ec8c8c9

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12705
    goto :goto_f5

    .line 12701
    :pswitch_e9  #0x0
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f4ccccd  # 0.8f

    invoke-direct {v2, v1, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 12702
    nop

    .line 12732
    :goto_f5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPIV(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 12698
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_53

    .line 12735
    .end local v0  # "i":I
    :cond_108
    :goto_108
    return-void

    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_e9  #00000000
        :pswitch_da  #00000001
        :pswitch_cb  #00000002
        :pswitch_bc  #00000003
        :pswitch_ad  #00000004
        :pswitch_a1  #00000005
        :pswitch_92  #00000006
        :pswitch_83  #00000007
        :pswitch_73  #00000008
        :pswitch_69  #00000009
    .end packed-switch
.end method
