.class public Lage/of/civilizations2/jakowski/lukasz/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field public static final TIME_INVIEW_LONG:I = 0x9c4

.field public static final TIME_INVIEW_SHORT:I = 0x5dc

.field public static final TIME_INVIEW_STANDARD:I = 0x7d0

.field public static final TIME_INVIEW_VERY_LONG:I = 0xdac

.field public static final TIME_INVIEW_VERY_VERY_LONG:I = 0x1194

.field private static final TIME_START_OPACITY_PERCENTAGE:F = 0.4f


# instance fields
.field private fAlpha:F

.field private iMaxWidth:I

.field private iMessagesSize:I

.field private iTimeInView:I

.field private inView:Z

.field private lMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lMessageColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lMessageWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->inView:Z

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    .line 33
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    .line 35
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 37
    const/16 v0, 0x7d0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iTimeInView:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lTime:J

    .line 40
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    .line 44
    return-void
.end method

.method private final addM()V
    .registers 3

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->inView:Z

    .line 227
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lTime:J

    .line 229
    const/16 v0, 0x7d0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iTimeInView:I

    .line 230
    return-void
.end method

.method private final getHeightT()I
    .registers 2

    .line 98
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    return v0
.end method

.method private final getPosXT()I
    .registers 3

    .line 86
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getPosYT()I
    .registers 3

    .line 90
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getWidthT()I
    .registers 2

    .line 94
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    return v0
.end method


# virtual methods
.method public final addM(Ljava/lang/String;)V
    .registers 5
    .param p1, "sMessage"  # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 120
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    .line 122
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM()V

    .line 123
    return-void
.end method

.method public final addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 7
    .param p1, "sMessage"  # Ljava/lang/String;
    .param p2, "tColor"  # Lcom/badlogic/gdx/graphics/Color;

    .line 127
    :try_start_0
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->TOAST_TIME:J

    .line 129
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_72

    .line 137
    const/4 v0, 0x0

    :try_start_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a

    .line 146
    goto :goto_58

    .line 139
    :catch_3a
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_56} :catch_57

    .line 145
    goto :goto_58

    .line 143
    :catch_57
    move-exception v2

    .line 148
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_58
    :try_start_58
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 149
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    .line 150
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_71} :catch_72

    .line 153
    goto :goto_73

    .line 151
    :catch_72
    move-exception v0

    .line 154
    :goto_73
    return-void
.end method

.method public final addM(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "nMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->TOAST_TIME:J

    .line 159
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6f

    .line 164
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :try_start_26
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_48

    .line 175
    goto :goto_6c

    .line 168
    :catch_48
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_49
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6a} :catch_6b

    .line 174
    goto :goto_6c

    .line 172
    :catch_6b
    move-exception v2

    .line 163
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 178
    .end local v0  # "i":I
    :cond_6f
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 179
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    .line 181
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_7a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    if-ge v0, v1, :cond_9f

    .line 182
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_9c

    .line 183
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 181
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 187
    .end local v0  # "i":I
    :cond_9f
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM()V

    .line 188
    return-void
.end method

.method public final addM(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "nMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "nColor":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->TOAST_TIME:J

    .line 193
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6c

    .line 199
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :try_start_23
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_45

    .line 210
    goto :goto_69

    .line 203
    :catch_45
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_46
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_67} :catch_68

    .line 209
    goto :goto_69

    .line 207
    :catch_68
    move-exception v2

    .line 198
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 213
    .end local v0  # "i":I
    :cond_6c
    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 214
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    .line 216
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_77
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    if-ge v0, v1, :cond_9c

    .line 217
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 218
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMaxWidth:I

    .line 216
    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 222
    .end local v0  # "i":I
    :cond_9c
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM()V

    .line 223
    return-void
.end method

.method public final addM(Z)V
    .registers 2
    .param p1, "inView"  # Z

    .line 106
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->inView:Z

    .line 107
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 49
    iget-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lTime:J

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iTimeInView:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_12

    .line 50
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->inView:Z

    goto :goto_4b

    .line 52
    :cond_12
    iget-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lTime:J

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iTimeInView:I

    int-to-float v3, v3

    const v4, 0x3ecccccd  # 0.4f

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-long v5, v3

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-gez v3, :cond_4b

    .line 53
    const/16 v1, 0xff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lTime:J

    sub-long/2addr v2, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iTimeInView:I

    int-to-float v6, v5

    mul-float v6, v6, v4

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v2, v6

    long-to-int v3, v2

    int-to-float v2, v5

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int/2addr v5, v2

    invoke-static {v1, v0, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    .line 55
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4b

    .line 56
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    .line 60
    :cond_4b
    :goto_4b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 62
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosXT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v3, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosYT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v4, v4, -0x1

    mul-int v2, v2, v4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getWidthT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v6

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v6, v6, -0x1

    mul-int v2, v2, v6

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr v0, v9

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 63
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosXT()I

    move-result v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getWidthT()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosYT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v4, v4, -0x1

    mul-int v2, v2, v4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v6

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v6, v6, -0x1

    mul-int v2, v2, v6

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 64
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosXT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v3, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosYT()I

    move-result v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v5, v5, -0x1

    mul-int v4, v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v9

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getWidthT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v6

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v6, v6, -0x1

    mul-int v2, v2, v6

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 65
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosXT()I

    move-result v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getWidthT()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosYT()I

    move-result v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v5, v5, -0x1

    mul-int v4, v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v9

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameBox:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getHeightT()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v6

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v6, v6, -0x1

    mul-int v2, v2, v6

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 68
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_22f
    :try_start_22f
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_231} :catch_2d0

    if-ge v1, v0, :cond_2cf

    .line 70
    :try_start_233
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosYT()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageColor:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_287
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_287} :catch_288

    .line 73
    goto :goto_2cb

    .line 71
    :catch_288
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_289
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->lMessageWidth:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getPosYT()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v5, v6

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iMessagesSize:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v1

    mul-int v5, v5, v6

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v9

    float-to-int v5, v5

    add-int/2addr v4, v5

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->fAlpha:F

    const v7, 0x3f6ccccd  # 0.925f

    invoke-direct {v5, v7, v7, v7, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_2cb} :catch_2d0

    .line 68
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2cb
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_22f

    .line 77
    .end local v1  # "i":I
    :cond_2cf
    goto :goto_2d1

    .line 75
    :catch_2d0
    move-exception v0

    .line 79
    :goto_2d1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    return-void
.end method

.method public final getInView()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->inView:Z

    return v0
.end method

.method public final setTimeInView(I)V
    .registers 2
    .param p1, "iTimeInView"  # I

    .line 233
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Toast;->iTimeInView:I

    .line 234
    return-void
.end method
