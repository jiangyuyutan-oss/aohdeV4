.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$5;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "taskKey"  # Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$5;->val$s:Ljava/lang/String;

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 10

    .line 152
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$5;->val$s:Ljava/lang/String;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    .line 153
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$5;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 155
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    .line 156
    .local v0, "iTextWidth":I
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v1, v1

    .line 158
    .local v1, "iTextHeight":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "i":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "j":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$5;->taskKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f333333  # 0.7f

    const v6, 0x3e570a3d  # 0.21f

    const v7, 0x3e051eb8  # 0.13f

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v4, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/util/List;Ljava/util/List;)V

    .line 165
    .end local v0  # "iTextWidth":I
    .end local v1  # "iTextHeight":I
    .end local v2  # "i":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3  # "j":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    goto :goto_4f

    .line 167
    :cond_4c
    const/4 v0, 0x0

    .line 168
    .restart local v0  # "iTextWidth":I
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 172
    .end local v0  # "iTextWidth":I
    :goto_4f
    goto :goto_54

    .line 170
    :catch_50
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 173
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_54
    return-void
.end method
