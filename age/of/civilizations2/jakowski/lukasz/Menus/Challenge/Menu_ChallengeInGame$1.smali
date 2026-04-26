.class Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/TextChal;
.source "Menu_ChallengeInGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;
    .param p2, "nText"  # Ljava/lang/String;
    .param p3, "posX"  # I
    .param p4, "posY"  # I
    .param p5, "nW"  # I
    .param p6, "nH"  # I

    .line 63
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button2/TextChal;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 2
    .param p1, "iID"  # I

    .line 67
    return-void
.end method

.method public drawE2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "isActive"  # Z
    .param p5, "scrollableY"  # Z

    .line 72
    return-void
.end method
