.class Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$15;
.super Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialBox;
.source "TutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;->updateDrawTutorial(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;
    .param p2, "sText"  # Ljava/lang/String;

    .line 538
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 541
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Messages()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 542
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialBox;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 544
    :cond_f
    return-void
.end method

.method public getPosX()I
    .registers 2

    .line 548
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Messages()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v0

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 553
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Messages()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/TutorialManager$15;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
