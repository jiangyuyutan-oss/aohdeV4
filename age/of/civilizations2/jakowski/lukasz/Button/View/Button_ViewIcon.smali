.class public Lage/of/civilizations2/jakowski/lukasz/Button/View/Button_ViewIcon;
.super Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;
.source "Button_ViewIcon.java"


# direct methods
.method public constructor <init>(IIZ)V
    .registers 16
    .param p1, "iPosX"  # I
    .param p2, "iPosY"  # I
    .param p3, "isClickable"  # Z

    .line 15
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;-><init>()V

    .line 16
    const-string v1, ""

    const/4 v2, -0x1

    const/16 v5, 0x19

    const/16 v6, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 17
    return-void
.end method


# virtual methods
.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 24
    return-void
.end method

.method public drawTextE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z

    .line 29
    return-void
.end method
