.class public Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;
.super Ljava/lang/Object;
.source "ButtonN_Civs2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextValue"
.end annotation


# instance fields
.field public iTextH:I

.field public iTextW:I

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;
    .param p2, "nText"  # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->text:Ljava/lang/String;

    .line 67
    if-eqz p2, :cond_2f

    :try_start_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 68
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextW:I

    .line 71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextH:I

    goto :goto_34

    .line 73
    :cond_2f
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextW:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    .line 77
    :goto_34
    goto :goto_39

    .line 75
    :catch_35
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 78
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;Ljava/lang/String;I)V
    .registers 7
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "nFont"  # I

    .line 80
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->text:Ljava/lang/String;

    .line 84
    if-eqz p2, :cond_2d

    :try_start_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 87
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextW:I

    .line 88
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextH:I

    goto :goto_32

    .line 90
    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs2$TextValue;->iTextW:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_33

    .line 94
    :goto_32
    goto :goto_37

    .line 92
    :catch_33
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 95
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_37
    return-void
.end method
