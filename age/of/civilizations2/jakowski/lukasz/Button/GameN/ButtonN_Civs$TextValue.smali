.class public Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;
.super Ljava/lang/Object;
.source "ButtonN_Civs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextValue"
.end annotation


# instance fields
.field public iTextH:I

.field public iTextW:I

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;
    .param p2, "nText"  # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->text:Ljava/lang/String;

    .line 60
    if-eqz p2, :cond_2f

    :try_start_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 61
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextW:I

    .line 64
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextH:I

    goto :goto_34

    .line 66
    :cond_2f
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextW:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    .line 70
    :goto_34
    goto :goto_39

    .line 68
    :catch_35
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 71
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;Ljava/lang/String;I)V
    .registers 7
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "nFont"  # I

    .line 73
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->text:Ljava/lang/String;

    .line 77
    if-eqz p2, :cond_2d

    :try_start_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 78
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 80
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextW:I

    .line 81
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextH:I

    goto :goto_32

    .line 83
    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/GameN/ButtonN_Civs$TextValue;->iTextW:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_33

    .line 87
    :goto_32
    goto :goto_37

    .line 85
    :catch_33
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 88
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_37
    return-void
.end method
