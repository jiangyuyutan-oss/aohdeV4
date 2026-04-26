.class Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder_OwnerAnimation(ZI)V
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

    .line 217
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 16
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->access$000(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPROVINCE_BORDER_ANIMATION_TIME(Ljava/lang/String;)J

    move-result-wide v3

    .line 221
    .local v3, "tempTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-float v0, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvProvinceAnimation:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_ProvinceAnimation;->PROVINCE_ANIMATION_OWNER_COLOR_INTERVAL:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 223
    .local v0, "tempPerc":F
    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_72

    .line 224
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->access$000(Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const v0, 0x3f7d70a4  # 0.99f

    .line 228
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 231
    :cond_72
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    .line 232
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->getDashedImage()I

    move-result v11

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 231
    move-object v6, p1

    move v7, v0

    move v8, p2

    invoke-virtual/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)V

    .line 233
    return-void
.end method
