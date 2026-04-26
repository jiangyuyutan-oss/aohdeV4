.class Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$20;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder_ActiveDashed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    .line 451
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$20;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 9
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 454
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000  # 255.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 455
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$20;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line33:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProvinceAnimation_Highlighted_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->getLineOffset()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 456
    return-void
.end method
