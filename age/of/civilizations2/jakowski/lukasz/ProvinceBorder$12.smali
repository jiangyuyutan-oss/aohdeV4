.class Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$12;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$DrawProvBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->updateDrawProvinceBorder_SelectedProvinces()V
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

    .line 348
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$12;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawPB(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 8
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"  # I

    .line 351
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f70f0f1

    const v2, 0x3f40c0c1

    const v3, 0x3e1c9c9d

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 352
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder$12;->this$0:Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 353
    return-void
.end method
